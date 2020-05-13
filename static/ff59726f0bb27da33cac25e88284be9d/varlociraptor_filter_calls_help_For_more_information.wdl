version 1.0

task VarlociraptorFilterCallsHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    varlociraptor filter-calls help For more information \
      ~{tryTry}
  >>>
}