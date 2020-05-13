version 1.0

task LocationPredictorFit {
  input {
    String inputInputFile
    String modelModelFile
    String geneGeneDomainScoreFileName
    String outputOutputDir
    Array[String]+ selectedSelectedColumnNames
    String windowWindowSize
    String complexityComplexity
    String nbitsNbits
    String nNDiscretizationLevels
    String labelLabelSize
    Int minMinSubarraySize
    Int maxMaxSubarraySize
  }
  command <<<
    location_predictor fit \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(modelModelFile) then ("--model-file " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(geneGeneDomainScoreFileName) then ("--gene-domain-score-file-name " +  '"' + geneGeneDomainScoreFileName + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(selectedSelectedColumnNames) then ("--selected-column-names " +  '"' + selectedSelectedColumnNames + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(complexityComplexity) then ("--complexity " +  '"' + complexityComplexity + '"') else ""} \
      ~{if defined(nbitsNbits) then ("--nbits " +  '"' + nbitsNbits + '"') else ""} \
      ~{if defined(nNDiscretizationLevels) then ("--n_discretization-levels " +  '"' + nNDiscretizationLevels + '"') else ""} \
      ~{if defined(labelLabelSize) then ("--label-size " +  '"' + labelLabelSize + '"') else ""} \
      ~{if defined(minMinSubarraySize) then ("--min-subarray-size " +  '"' + minMinSubarraySize + '"') else ""} \
      ~{if defined(maxMaxSubarraySize) then ("--max-subarray-size " +  '"' + maxMaxSubarraySize + '"') else ""}
  >>>
}