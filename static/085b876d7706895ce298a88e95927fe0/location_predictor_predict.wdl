version 1.0

task LocationPredictorPredict {
  input {
    String inputInputFile
    String modelModelFile
    String geneGeneDomainScoreFileName
    String outputOutputDir
  }
  command <<<
    location_predictor predict \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(modelModelFile) then ("--model-file " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(geneGeneDomainScoreFileName) then ("--gene-domain-score-file-name " +  '"' + geneGeneDomainScoreFileName + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}