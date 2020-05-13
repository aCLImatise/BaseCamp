version 1.0

task ScorerOutput file {
  input {
    String? predictedPredictedCt
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    scorer output file \
      ~{predictedPredictedCt} \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}