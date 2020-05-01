version 1.0

task ExtractDEs {
  input {
    Boolean outputOutput
    Boolean regionsRegions
    Boolean mapperMapper
    Boolean techTech
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? mappedMappedReads
  }
  command <<<
    extractDEs \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-regions" false="" regionsRegions} \
      ~{true="-mapper" false="" mapperMapper} \
      ~{true="-tech" false="" techTech} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{mappedMappedReads}
  >>>
}