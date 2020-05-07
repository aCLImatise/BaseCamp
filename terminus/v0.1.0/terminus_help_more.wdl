version 1.0

task TerminusHelpMore {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    terminus help more \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}