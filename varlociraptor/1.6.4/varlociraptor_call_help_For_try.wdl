version 1.0

task VarlociraptorCallHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor call help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}