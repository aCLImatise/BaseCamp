version 1.0

task GetToolPerformanceTable.R {
  input {
    String inputInputDir
    String refRefFile
    Boolean parallelParallel
    String numNumCores
    String exclusionsExclusions
    String ontologyOntologyGraph
    String labLabClMapping
    String barcodeBarcodeColRef
    String barcodeBarcodeColPred
    String labelLabelColumnRef
    String labelLabelColumnPred
    String semanticSemanticSimMetric
    String outputOutputPath
  }
  command <<<
    get_tool_performance_table.R \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(refRefFile) then ("--ref-file " +  '"' + refRefFile + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{if defined(numNumCores) then ("--num-cores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(exclusionsExclusions) then ("--exclusions " +  '"' + exclusionsExclusions + '"') else ""} \
      ~{if defined(ontologyOntologyGraph) then ("--ontology-graph " +  '"' + ontologyOntologyGraph + '"') else ""} \
      ~{if defined(labLabClMapping) then ("--lab-cl-mapping " +  '"' + labLabClMapping + '"') else ""} \
      ~{if defined(barcodeBarcodeColRef) then ("--barcode-col-ref " +  '"' + barcodeBarcodeColRef + '"') else ""} \
      ~{if defined(barcodeBarcodeColPred) then ("--barcode-col-pred " +  '"' + barcodeBarcodeColPred + '"') else ""} \
      ~{if defined(labelLabelColumnRef) then ("--label-column-ref " +  '"' + labelLabelColumnRef + '"') else ""} \
      ~{if defined(labelLabelColumnPred) then ("--label-column-pred " +  '"' + labelLabelColumnPred + '"') else ""} \
      ~{if defined(semanticSemanticSimMetric) then ("--semantic-sim-metric " +  '"' + semanticSemanticSimMetric + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}