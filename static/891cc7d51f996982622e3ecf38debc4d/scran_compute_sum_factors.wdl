version 1.0

task ScranComputeSumFactors.R {
  input {
    String inputInputSceObject
    String assayAssayType
    Int sizesSizes
    String clustersClusters
    String subsetSubsetRow
    String getGetSpikes
    String scalingScaling
    Int minMinMean
    String outputOutputSceObject
  }
  command <<<
    scran-compute-sum-factors.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset-row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(scalingScaling) then ("--scaling " +  '"' + scalingScaling + '"') else ""} \
      ~{if defined(minMinMean) then ("--min_mean " +  '"' + minMinMean + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}