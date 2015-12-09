# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

device = ScadaDb::Device.create!({
  name:  "dev01",
  description: "Device #01"
})

ScadaDb::MemSlot.create!([
  {
    device_id:    device.id,
    msw:          nil,
    lsw:          "0x3001",
    format:       "I",
    description:  "Potenza Istantanea Generatore",
    unit:         "kW",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x3002",
    lsw:          "0x3003",
    format:       "2W",
    description:  "Energia Prodotta",
    unit:         "kWh",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x3004",
    lsw:          "0x3005",
    format:       "2W",
    description:  "Quantità di calore prodotto",
    unit:         "Mwh",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x3006",
    lsw:          "0x3007",
    format:       "2W",
    description:  "Ore di esercizio",
    unit:         "h",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x3008",
    lsw:          "0x3009",
    format:       "2W",
    description:  "Consumo di Combustibile",
    unit:         "l",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x300A",
    lsw:          "0x300B",
    format:       "2W",
    description:  "Livello cisterna carburante",
    unit:         "mm",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x300C",
    lsw:          "0x300D",
    format:       "2W",
    description:  "Posizione valvola Scarico",
    unit:         "%",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x300E",
    lsw:          "0x300F",
    format:       "2I",
    description:  "Temperatura mandata",
    unit:         "°C",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          "0x3010",
    lsw:          "0x3011",
    format:       "2I",
    description:  "Temperatura ritorno",
    unit:         "°C",
    decimals:     0,
    notes:        nil
  },
  {
    device_id:    device.id,
    msw:          nil,
    lsw:          "0x3012",
    format:       "I",
    description:  "Motore in funzione",
    unit:         nil,
    decimals:     nil,
    notes:        "1 = motore acceso; 0 = motore spento"
  },
  {
    device_id:    device.id,
    msw:          nil,
    lsw:          "0x3013",
    format:       "I",
    description:  "Presenza allarmi",
    unit:         nil,
    decimals:     nil,
    notes:        "1 = guasti presenti; 0 = guasti assenti"
  },
  {
    device_id:    device.id,
    msw:          nil,
    lsw:          "0x3014",
    format:       "I",
    description:  "Dissipazione Termica",
    unit:         nil,
    decimals:     nil,
    notes:        "1 = Dissipazione; 0 = Recupero"
  },
  {
    device_id:    device.id,
    msw:          nil,
    lsw:          "0x3015",
    format:       "I",
    description:  "Livello Monossido di Carbonio (CO)",
    unit:         "ppmv",
    decimals:     0,
    notes:        nil
  }
])
