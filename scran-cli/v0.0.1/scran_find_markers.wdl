version 1.0

task ScranFindMarkers.R {
  input {
    String inputInputSceObject
    String clustersClusters
    String pPValueType
    String subsetSubsetRow
    String assayAssayType
    String getGetSpikes
    String outputOutputMarkers
  }
  command <<<
    scran-find-markers.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(pPValueType) then ("--pvalue-type " +  '"' + pPValueType + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(outputOutputMarkers) then ("--output-markers " +  '"' + outputOutputMarkers + '"') else ""}
  >>>
}