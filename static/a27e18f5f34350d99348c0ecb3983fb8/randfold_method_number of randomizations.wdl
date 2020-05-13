version 1.0

task RandfoldMethodNumber of randomizations {
  input {
    File? filenameFilename
    String? numberNumberOfRandomizationS
  }
  command <<<
    randfold method number of randomizations \
      ~{filenameFilename} \
      ~{numberNumberOfRandomizationS}
  >>>
}