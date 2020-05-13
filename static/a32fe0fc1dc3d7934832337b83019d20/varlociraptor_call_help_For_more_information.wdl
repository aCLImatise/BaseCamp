version 1.0

task VarlociraptorCallHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    varlociraptor call help For more information \
      ~{tryTry}
  >>>
}