version 1.0

task VarlociraptorFilterCallsHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor filter-calls help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}