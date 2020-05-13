version 1.0

task GetEmpiricalDist.R {
  input {
    String inputInputRefFile
    String exclusionsExclusions
    String labelLabelColumnRef
    String labLabClMapping
    Boolean parallelParallel
    String numNumIterations
    String numNumCores
    String ontologyOntologyGraph
    String semanticSemanticSimMetric
    String outputOutputPath
  }
  command <<<
    get_empirical_dist.R \
      ~{if defined(inputInputRefFile) then ("--input-ref-file " +  '"' + inputInputRefFile + '"') else ""} \
      ~{if defined(exclusionsExclusions) then ("--exclusions " +  '"' + exclusionsExclusions + '"') else ""} \
      ~{if defined(labelLabelColumnRef) then ("--label-column-ref " +  '"' + labelLabelColumnRef + '"') else ""} \
      ~{if defined(labLabClMapping) then ("--lab-cl-mapping " +  '"' + labLabClMapping + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{if defined(numNumCores) then ("--num-cores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(ontologyOntologyGraph) then ("--ontology-graph " +  '"' + ontologyOntologyGraph + '"') else ""} \
      ~{if defined(semanticSemanticSimMetric) then ("--semantic-sim-metric " +  '"' + semanticSemanticSimMetric + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}