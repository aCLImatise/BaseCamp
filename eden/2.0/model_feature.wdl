version 1.0

task ModelFeature {
  input {
    String inputInputFile
    String modelModelFile
    String outputOutputDir
    String outputOutputFormat
  }
  command <<<
    model feature \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(modelModelFile) then ("--model-file " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""}
  >>>
}