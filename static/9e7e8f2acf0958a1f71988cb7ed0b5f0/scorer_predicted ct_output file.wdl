version 1.0

task ScorerPredicted ctOutput file {
  input {
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    scorer predicted ct output file \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}