version 1.0

task MotifPredict {
  input {
    String inputInputFile
    String modelModelFilename
    String outputOutputDir
  }
  command <<<
    motif predict \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(modelModelFilename) then ("--model-filename " +  '"' + modelModelFilename + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}