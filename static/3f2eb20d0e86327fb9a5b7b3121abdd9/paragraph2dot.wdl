version 1.0

task Paragraph2dot.pyOutputOutputOutput {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    paragraph2dot.py output output output \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}