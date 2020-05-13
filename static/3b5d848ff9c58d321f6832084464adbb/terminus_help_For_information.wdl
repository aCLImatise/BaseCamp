version 1.0

task TerminusHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    terminus help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}