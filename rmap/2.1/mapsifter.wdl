version 1.0

task Mapsifter {
  input {
    Boolean outputOutput
    Boolean verboseVerbose
    Boolean excludeExclude
    Boolean upperUpper
    Boolean lowerLower
    Boolean targetTarget
    Boolean aboutAbout
    String? optionsOptions
    String? bedBedFormatFile
  }
  command <<<
    mapsifter \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-exclude" false="" excludeExclude} \
      ~{true="-upper" false="" upperUpper} \
      ~{true="-lower" false="" lowerLower} \
      ~{true="-target" false="" targetTarget} \
      ~{true="-about" false="" aboutAbout} \
      ~{bedBedFormatFile}
  >>>
}