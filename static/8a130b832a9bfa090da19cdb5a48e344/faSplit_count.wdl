version 1.0

task FaSplitCount {
  input {
    String? howHow
    String? inputInputFa
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit count \
      ~{howHow} \
      ~{inputInputFa} \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}