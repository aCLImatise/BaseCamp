version 1.0

task PlasFlow.py {
  input {
    String inputInput
    String outputOutput
    String thresholdThreshold
    String labelsLabels
    String modelsModels
  }
  command <<<
    PlasFlow.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""}
  >>>
}