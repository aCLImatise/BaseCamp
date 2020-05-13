version 1.0

task FaSplitOutRoot {
  input {
    String? howHow
    String? inputInputFa
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit outRoot \
      ~{howHow} \
      ~{inputInputFa} \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}