version 1.0

task VarlociraptorCallHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor call help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}