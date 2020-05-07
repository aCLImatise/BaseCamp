version 1.0

task FaSplitInput.fa {
  input {
    String? howHow
    String? inputInputFa
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit input.fa \
      ~{howHow} \
      ~{inputInputFa} \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}