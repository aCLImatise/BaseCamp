version 1.0

task ScorerAccepted ct {
  input {
    String? predictedPredictedCt
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    scorer accepted ct \
      ~{predictedPredictedCt} \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}