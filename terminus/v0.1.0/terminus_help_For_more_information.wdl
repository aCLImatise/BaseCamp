version 1.0

task TerminusHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    terminus help For more information \
      ~{tryTry}
  >>>
}