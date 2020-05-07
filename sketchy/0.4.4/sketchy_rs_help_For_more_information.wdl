version 1.0

task SketchyRsHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    sketchy-rs help For more information \
      ~{tryTry}
  >>>
}