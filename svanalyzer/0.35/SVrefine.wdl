version 1.0

task SVrefine {
  input {
    File svSvRegions
    Boolean includesIncludesEqs
    Boolean verboseVerbose
  }
  command <<<
    SVrefine \
      ~{if defined(svSvRegions) then ("--svregions " +  '"' + svSvRegions + '"') else ""} \
      ~{true="--includeseqs" false="" includesIncludesEqs} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}