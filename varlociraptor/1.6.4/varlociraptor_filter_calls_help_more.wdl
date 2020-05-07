version 1.0

task VarlociraptorFilterCallsHelpMore {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor filter-calls help more \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}