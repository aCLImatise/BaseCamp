version 1.0

task TerminusHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    terminus help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}