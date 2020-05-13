version 1.0

task SketchyRsHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    sketchy-rs help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}