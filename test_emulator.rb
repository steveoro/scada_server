require 'rmodbus'

# [Steve A., 20151209] For more info, check-out:
#
# - https://github.com/flipback/rmodbus
# - https://en.wikipedia.org/wiki/Modbus

port = 8502
device_1_id = 1


srv = ModBus::TCPServer.new( port, device_1_id )

=begin
(Excerpt from the Wiki entry)

Some conventions govern how access to Modbus entities (coils, discrete inputs,
input registers, holding registers) are referenced.
It is important to make a distinction between entity number and entity address:

  - Entity numbers combine entity type and entity location within their
    description table

  - Entity address is the starting address, a 16-bit value in the data part
    of the Modbus frame. As such its range goes from 0 to 65,535

In the traditional standard, numbers for those entities start with a digit,
followed by a number of four digits in range 1 - 9,999:

  - coils numbers start with a zero and then span from 00001 to 09999
  - discrete input numbers start with a one and then span from 10001 to 19999
  - input register numbers start with a three and then span from 30001 to 39999
  - holding register numbers start with a four and then span from 40001 to 49999

This translates into addresses between 0 and 9,998 in data frames.

For example, in order to read holding registers starting at number 40001,
corresponding address in the data frame will be 0 with a function code of 3
(as seen above). For holding registers starting at number 40100, address will
be 99. Etc.

This limits the number of addresses to 9,999 for each entity. A de facto
referencing extends this to the maximum of 65,536.

It simply consists of adding one digit to the previous list:

    - coil numbers span from 000001 to 065536
    - discrete input numbers span from 100001 to 165536
    - input register numbers span from 300001 to 365536
    - holding register numbers span from 400001 to 465536

When using the extended referencing, all number references must be exactly
six digits. This avoids confusion between coils and other entities. For example,
to know the difference between holding register #40001 and coil #40001, if
coil #40001 is the target, it must appear as #040001.

=end


# Define memory mappings and their values:
srv.coils = [ 1, 0, 1, 1 ]
srv.discrete_inputs = [ 1, 1, 0, 0 ]
srv.holding_registers = [ 1, 2, 3, 4 ]
srv.input_registers = [ 1, 2, 3, 4 ]

# Be verbose:
srv.debug = true
srv.audit = true

# Start the server:
srv.start


# Run the server for 200 secs:
200.times do
  putc "."
  sleep 1
end

srv.stop
