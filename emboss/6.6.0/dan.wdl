version 1.0

task Dan {
  input {
    Boolean windowWindowSize
    Boolean shiftShiftIncrement
    Boolean dnaDnaConc
    Boolean saltSaltConc
    Boolean productProduct
    Boolean thermoThermo
  }
  command <<<
    dan \
      ~{true="-windowsize" false="" windowWindowSize} \
      ~{true="-shiftincrement" false="" shiftShiftIncrement} \
      ~{true="-dnaconc" false="" dnaDnaConc} \
      ~{true="-saltconc" false="" saltSaltConc} \
      ~{true="-product" false="" productProduct} \
      ~{true="-thermo" false="" thermoThermo}
  >>>
}