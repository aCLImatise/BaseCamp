version 1.0

task IntersectionMatrix.py {
  input {
    Boolean fracFrac
    Boolean enrichmentEnrichment
    String genomeGenome
    String iterationsIterations
    String processesProcesses
    Boolean testTest
    Boolean verboseVerbose
    String? bedsBeds
  }
  command <<<
    intersection_matrix.py \
      ~{bedsBeds} \
      ~{true="--frac" false="" fracFrac} \
      ~{true="--enrichment" false="" enrichmentEnrichment} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}