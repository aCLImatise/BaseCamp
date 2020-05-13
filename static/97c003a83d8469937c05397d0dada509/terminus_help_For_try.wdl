version 1.0

task TerminusHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    terminus help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}