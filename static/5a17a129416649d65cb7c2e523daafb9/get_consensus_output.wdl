version 1.0

task GetConsensusOutput.R {
  input {
    String inputInputDir
    String toolToolTable
    Boolean parallelParallel
    String numNumCores
    String clClDictionary
    String exclusionsExclusions
    String ontologyOntologyGraph
    String semanticSemanticSimMetric
    String summarySummaryTableOutputPath
    String rawRawTableOutputPath
  }
  command <<<
    get_consensus_output.R \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(toolToolTable) then ("--tool-table " +  '"' + toolToolTable + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{if defined(numNumCores) then ("--num-cores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(clClDictionary) then ("--cl-dictionary " +  '"' + clClDictionary + '"') else ""} \
      ~{if defined(exclusionsExclusions) then ("--exclusions " +  '"' + exclusionsExclusions + '"') else ""} \
      ~{if defined(ontologyOntologyGraph) then ("--ontology-graph " +  '"' + ontologyOntologyGraph + '"') else ""} \
      ~{if defined(semanticSemanticSimMetric) then ("--semantic-sim-metric " +  '"' + semanticSemanticSimMetric + '"') else ""} \
      ~{if defined(summarySummaryTableOutputPath) then ("--summary-table-output-path " +  '"' + summarySummaryTableOutputPath + '"') else ""} \
      ~{if defined(rawRawTableOutputPath) then ("--raw-table-output-path " +  '"' + rawRawTableOutputPath + '"') else ""}
  >>>
}