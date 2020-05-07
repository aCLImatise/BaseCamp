version 1.0

task SketchyRsHelpMore {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    sketchy-rs help more \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}