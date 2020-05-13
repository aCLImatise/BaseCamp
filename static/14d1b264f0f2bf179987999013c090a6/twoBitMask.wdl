version 1.0

task TwoBitMask {
  input {
    Boolean addAdd
    Boolean typeType
    String? inputInput2bit
    String? maskMaskFile
    String? outputOutput2bit
  }
  command <<<
    twoBitMask \
      ~{inputInput2bit} \
      ~{true="-add" false="" addAdd} \
      ~{true="-type" false="" typeType} \
      ~{maskMaskFile} \
      ~{outputOutput2bit}
  >>>
}