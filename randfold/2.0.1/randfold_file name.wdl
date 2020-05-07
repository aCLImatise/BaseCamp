version 1.0

task RandfoldFile name {
  input {
    String? methodMethod
    File? filenameFilename
    String? numberNumberOfRandomizationS
  }
  command <<<
    randfold file name \
      ~{methodMethod} \
      ~{filenameFilename} \
      ~{numberNumberOfRandomizationS}
  >>>
}