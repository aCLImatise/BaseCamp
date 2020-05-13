version 1.0

task SketchyRsHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    sketchy-rs help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}