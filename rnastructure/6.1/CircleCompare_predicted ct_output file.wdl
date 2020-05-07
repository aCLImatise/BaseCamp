version 1.0

task CircleComparePredicted ctOutput file {
  input {
    String? acceptedAcceptedCt
    String? outputOutputFile
  }
  command <<<
    CircleCompare predicted ct output file \
      ~{acceptedAcceptedCt} \
      ~{outputOutputFile}
  >>>
}