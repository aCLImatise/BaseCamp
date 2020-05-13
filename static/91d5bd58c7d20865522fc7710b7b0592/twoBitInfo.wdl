version 1.0

task TwoBitInfo {
  input {
    Boolean nNBed
    Boolean nonNonS
    Boolean udcUdcDir
    String? inputInput2bit
    String? outputOutputTab
  }
  command <<<
    twoBitInfo \
      ~{inputInput2bit} \
      ~{true="-nBed" false="" nNBed} \
      ~{true="-noNs" false="" nonNonS} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{outputOutputTab}
  >>>
}