version 1.0

task SketchyRsHelpInformation {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    sketchy-rs help information \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}