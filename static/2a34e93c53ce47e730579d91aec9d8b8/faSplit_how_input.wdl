version 1.0

task FaSplitHowInput.faOutRoot {
  input {
    String? countCount
    String? outOutRoot
  }
  command <<<
    faSplit how input.fa outRoot \
      ~{countCount} \
      ~{outOutRoot}
  >>>
}