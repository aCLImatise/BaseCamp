version 1.0

task ScranDenoisePca.R {
  input {
    String inputInputSceObject
    String technicalTechnical
    String subsetSubsetRow
    Int minMinRank
    Int maxMaxRank
    String assayAssayType
    String getGetSpikes
    String valueValue
    String outputOutputSceObject
  }
  command <<<
    scran-denoise-pca.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(technicalTechnical) then ("--technical " +  '"' + technicalTechnical + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(minMinRank) then ("--min-rank " +  '"' + minMinRank + '"') else ""} \
      ~{if defined(maxMaxRank) then ("--max-rank " +  '"' + maxMaxRank + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(valueValue) then ("--value " +  '"' + valueValue + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}