version 1.0

task ModelEstimate {
  input {
    String positivePositiveInputFile
    String negativeNegativeInputFile
    String modelModelFile
    String outputOutputDir
    Boolean crossCrossValidation
  }
  command <<<
    model estimate \
      ~{if defined(positivePositiveInputFile) then ("--positive-input-file " +  '"' + positivePositiveInputFile + '"') else ""} \
      ~{if defined(negativeNegativeInputFile) then ("--negative-input-file " +  '"' + negativeNegativeInputFile + '"') else ""} \
      ~{if defined(modelModelFile) then ("--model-file " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--cross-validation" false="" crossCrossValidation}
  >>>
}