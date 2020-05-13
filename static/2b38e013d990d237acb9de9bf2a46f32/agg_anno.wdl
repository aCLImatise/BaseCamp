version 1.0

task AggAnno {
  input {
    Boolean includeInclude
    Boolean regionsRegions
    File outputOutputFile
    Boolean outputOutputType
    String? inputInputBcf
  }
  command <<<
    agg anno \
      ~{inputInputBcf} \
      ~{true="--include" false="" includeInclude} \
      ~{true="--regions" false="" regionsRegions} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType}
  >>>
}