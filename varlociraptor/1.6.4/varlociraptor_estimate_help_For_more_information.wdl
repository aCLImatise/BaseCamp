version 1.0

task VarlociraptorEstimateHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    varlociraptor estimate help For more information \
      ~{tryTry}
  >>>
}