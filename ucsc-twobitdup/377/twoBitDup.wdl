version 1.0

task TwoBitDup {
  input {
    Boolean udcUdcDir
    File? fileFile2bit
  }
  command <<<
    twoBitDup \
      ~{fileFile2bit} \
      ~{true="-udcDir" false="" udcUdcDir}
  >>>
}