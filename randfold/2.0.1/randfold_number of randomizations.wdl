version 1.0

task RandfoldNumber of randomizations {
  input {
    String? methodMethod
    File? filenameFilename
    String? numberNumberOfRandomizationS
  }
  command <<<
    randfold number of randomizations \
      ~{methodMethod} \
      ~{filenameFilename} \
      ~{numberNumberOfRandomizationS}
  >>>
}