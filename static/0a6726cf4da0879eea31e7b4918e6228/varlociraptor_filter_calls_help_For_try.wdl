version 1.0

task VarlociraptorFilterCallsHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor filter-calls help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}