version 1.0

task ScranBuildSnnGraph.R {
  input {
    String inputInputSceObject
    String sharedShared
    String kKValue
    String dDValue
    String typeType
    String transposedTransposed
    String subsetSubsetRow
    String assayAssayType
    String getGetSpikes
    String useUseDimRed
    String outputOutputIGraphObject
  }
  command <<<
    scran-build-snn-graph.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(sharedShared) then ("--shared " +  '"' + sharedShared + '"') else ""} \
      ~{if defined(kKValue) then ("--k-value " +  '"' + kKValue + '"') else ""} \
      ~{if defined(dDValue) then ("--d-value " +  '"' + dDValue + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(transposedTransposed) then ("--transposed " +  '"' + transposedTransposed + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(useUseDimRed) then ("--use-dimred " +  '"' + useUseDimRed + '"') else ""} \
      ~{if defined(outputOutputIGraphObject) then ("--output-igraph-object " +  '"' + outputOutputIGraphObject + '"') else ""}
  >>>
}