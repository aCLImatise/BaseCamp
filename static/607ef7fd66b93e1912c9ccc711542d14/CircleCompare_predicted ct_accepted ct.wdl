version 1.0

task CircleComparePredicted ctAccepted ct {
  input {
    String? outputOutputFile
  }
  command <<<
    CircleCompare predicted ct accepted ct \
      ~{outputOutputFile}
  >>>
}