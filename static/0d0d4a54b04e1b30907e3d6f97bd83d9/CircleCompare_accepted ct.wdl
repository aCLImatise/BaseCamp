version 1.0

task CircleCompareAccepted ct {
  input {
    String? predictedPredictedCt
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    CircleCompare accepted ct \
      ~{predictedPredictedCt} \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}