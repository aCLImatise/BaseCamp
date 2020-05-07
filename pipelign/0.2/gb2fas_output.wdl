version 1.0

task Gb2fasOutput.fas {
  input {
    String? inputInputGb
    String? outputOutputFas
  }
  command <<<
    gb2fas output.fas \
      ~{inputInputGb} \
      ~{outputOutputFas}
  >>>
}