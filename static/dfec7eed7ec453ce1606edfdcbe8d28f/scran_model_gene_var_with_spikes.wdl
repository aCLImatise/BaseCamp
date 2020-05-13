version 1.0

task ScranModelGeneVarWithSpikes.R {
  input {
    String inputInputSceObject
    String blockBlock
    Int sizeSizeFactors
    String spikesSpikes
    String spikeSpikeSizeFactors
    String designDesign
    String subsetSubsetRow
    String blockBlock
    String designDesign
    String subsetSubsetRow
    String subsetSubsetFit
    String assayAssayType
    Int minMinMean
    String parametricParametric
    String equiEquiWeight
    String methodMethod
    String outputOutputGenevaRSpikesTable
  }
  command <<<
    scran-model-gene-var-with-spikes.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(blockBlock) then ("--block " +  '"' + blockBlock + '"') else ""} \
      ~{if defined(sizeSizeFactors) then ("--size-factors " +  '"' + sizeSizeFactors + '"') else ""} \
      ~{if defined(spikesSpikes) then ("--spikes " +  '"' + spikesSpikes + '"') else ""} \
      ~{if defined(spikeSpikeSizeFactors) then ("--spike-size-factors " +  '"' + spikeSpikeSizeFactors + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(blockBlock) then ("--block " +  '"' + blockBlock + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset_row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(subsetSubsetFit) then ("--subset-fit " +  '"' + subsetSubsetFit + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(minMinMean) then ("--min-mean " +  '"' + minMinMean + '"') else ""} \
      ~{if defined(parametricParametric) then ("--parametric " +  '"' + parametricParametric + '"') else ""} \
      ~{if defined(equiEquiWeight) then ("--equiweight " +  '"' + equiEquiWeight + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outputOutputGenevaRSpikesTable) then ("--output-geneVarSpikes-table " +  '"' + outputOutputGenevaRSpikesTable + '"') else ""}
  >>>
}