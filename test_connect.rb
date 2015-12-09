require 'rmodbus'

# [Steve A., 20151209] For more info, check-out:
#
# - https://github.com/flipback/rmodbus
# - https://en.wikipedia.org/wiki/Modbus

port = 8502
device_1_id = 1

# Uncomment the actual address used for testing connections:
device_1_ip = "127.0.0.1"
# device_1_ip = "10.0.0.201"


ModBus::TCPClient.connect( device_1_ip, port ) do |client|
  client.with_slave( device_1_id ) do |slave|
    # Be verbose:
    slave.debug = true
    # Read all the registers:
    regs = slave.holding_registers
    puts regs.inspect # [ 0..3 ]

    # Write new values:
    # regs[ 0..3 ] = [ 2, 0, 1, 1 ]
    # Output the result:
    # puts regs.inspect # [ 0..3 ]
  end
end
