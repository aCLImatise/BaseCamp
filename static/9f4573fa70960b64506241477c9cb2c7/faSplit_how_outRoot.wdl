version 1.0

task FaSplitHowOutRoot {
  input {
    String? inputInputFa
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit how outRoot \
      ~{inputInputFa} \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}