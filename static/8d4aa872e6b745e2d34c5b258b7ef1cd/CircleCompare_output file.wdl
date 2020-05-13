version 1.0

task CircleCompareOutput file {
  input {
    String? predictedPredictedCt
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    CircleCompare output file \
      ~{predictedPredictedCt} \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}