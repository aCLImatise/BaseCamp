version 1.0

task SketchyRsHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    sketchy-rs help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}