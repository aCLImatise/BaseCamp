version 1.0

task VarlociraptorCallHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor call help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}