version 1.0

task GenePredFilter {
  input {
    Boolean verboseVerbose
    String? geneGenePredIn
    String? geneGenePredOut
  }
  command <<<
    genePredFilter \
      ~{geneGenePredIn} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{geneGenePredOut}
  >>>
}