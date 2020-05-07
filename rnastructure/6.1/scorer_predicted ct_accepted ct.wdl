version 1.0

task ScorerPredicted ctAccepted ct {
  input {
    String? outputOutputFile
  }
  command <<<
    scorer predicted ct accepted ct \
      ~{outputOutputFile}
  >>>
}