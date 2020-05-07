version 1.0

task VarlociraptorFilterCallsHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor filter-calls help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}