version 1.0

task DeepbgcTrain {
  input {
    String modelModel
    String targetTarget
    String outputOutput
    String logLog
    String classesClasses
    String configConfig
    String validationValidation
    Int verboseVerbose
    String? inputsInputs
  }
  command <<<
    deepbgc train \
      ~{inputsInputs} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(classesClasses) then ("--classes " +  '"' + classesClasses + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(validationValidation) then ("--validation " +  '"' + validationValidation + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}