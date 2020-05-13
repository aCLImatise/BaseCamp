version 1.0

task ScranComputeSpikeFactors.R {
  input {
    String inputInputSceObject
    String typeType
    String assayAssayType
    String generalGeneralUse
    String outputOutputSceObject
  }
  command <<<
    scran-compute-spike-factors.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(generalGeneralUse) then ("--general_use " +  '"' + generalGeneralUse + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}