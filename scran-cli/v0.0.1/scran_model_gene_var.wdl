version 1.0

task ScranModelGeneVar.R {
  input {
    String inputInputSceObject
    String blockBlock
    String designDesign
    String subsetSubsetRow
    String subsetSubsetFit
    String assayAssayType
    Int minMinMean
    String parametricParametric
    String equiEquiWeight
    String methodMethod
    String outputOutputGenevaRTable
  }
  command <<<
    scran-model-gene-var.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(blockBlock) then ("--block " +  '"' + blockBlock + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(subsetSubsetRow) then ("--subset-row " +  '"' + subsetSubsetRow + '"') else ""} \
      ~{if defined(subsetSubsetFit) then ("--subset-fit " +  '"' + subsetSubsetFit + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(minMinMean) then ("--min-mean " +  '"' + minMinMean + '"') else ""} \
      ~{if defined(parametricParametric) then ("--parametric " +  '"' + parametricParametric + '"') else ""} \
      ~{if defined(equiEquiWeight) then ("--equiweight " +  '"' + equiEquiWeight + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outputOutputGenevaRTable) then ("--output-geneVar-table " +  '"' + outputOutputGenevaRTable + '"') else ""}
  >>>
}