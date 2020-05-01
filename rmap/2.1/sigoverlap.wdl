version 1.0

task Sigoverlap {
  input {
    Boolean outputOutput
    Boolean verboseVerbose
    Boolean targetTarget
    Boolean sizeSize
    Boolean aboutAbout
    String? optionsOptions
    String? bedBedFormatFile
  }
  command <<<
    sigoverlap \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-target" false="" targetTarget} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-about" false="" aboutAbout} \
      ~{bedBedFormatFile}
  >>>
}