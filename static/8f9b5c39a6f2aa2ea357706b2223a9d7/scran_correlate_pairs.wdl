version 1.0

task ScranCorrelatePairs.R {
  input {
    String inputInputSceObject
    String blockBlock
    String designDesign
    String assayAssayType
    String itersIters
    String useUseNames
    String subsetSubsetRow
    String getGetSpikes
    String useUseDimRed
    String outputOutputPairsDf
  }
  command <<<
    scran-correlate-pairs.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(blockBlock) then ("--block " +  '"' + blockBlock + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(itersIters) then ("--iters " +  '"' + itersIters + '"') else ""} \
      ~{if defined(useUseNames) then ("--use-names " +  '"' + useUseNames + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(useUseDimRed) then ("--use-dimred " +  '"' + useUseDimRed + '"') else ""} \
      ~{if defined(outputOutputPairsDf) then ("--output-pairs-df " +  '"' + outputOutputPairsDf + '"') else ""}
  >>>
}