version 1.0

task Gb2fasInput.gb {
  input {
    String? outputOutputFas
  }
  command <<<
    gb2fas input.gb \
      ~{outputOutputFas}
  >>>
}