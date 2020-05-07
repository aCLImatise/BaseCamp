version 1.0

task FaSplitHowCount {
  input {
    String? inputInputFa
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit how count \
      ~{inputInputFa} \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}