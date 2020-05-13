version 1.0

task ScranConvertTo.R {
  input {
    String inputInputSceObject
    String typeType
    String assayAssayType
    String getGetSpikes
    String outputOutputConverted
  }
  command <<<
    scran-convert-to.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(getGetSpikes) then ("--get-spikes " +  '"' + getGetSpikes + '"') else ""} \
      ~{if defined(outputOutputConverted) then ("--output-converted " +  '"' + outputOutputConverted + '"') else ""}
  >>>
}