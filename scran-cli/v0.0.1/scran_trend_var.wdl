version 1.0

task ScranTrendVar.R {
  input {
    String inputInputSceObject
    Int minMinMean
    String methodMethod
    String parametricParametric
    String assayAssayType
    String useUseSpikes
    String outputOutputTrendVar
  }
  command <<<
    scran-trend-var.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(minMinMean) then ("--min-mean " +  '"' + minMinMean + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(parametricParametric) then ("--parametric " +  '"' + parametricParametric + '"') else ""} \
      ~{if defined(assayAssayType) then ("--assay-type " +  '"' + assayAssayType + '"') else ""} \
      ~{if defined(useUseSpikes) then ("--use-spikes " +  '"' + useUseSpikes + '"') else ""} \
      ~{if defined(outputOutputTrendVar) then ("--output-trend-var " +  '"' + outputOutputTrendVar + '"') else ""}
  >>>
}