version 1.0

task Pedmerge {
  input {
    String? inputInput1
    String? outputOutput
  }
  command <<<
    pedmerge \
      ~{inputInput1} \
      ~{outputOutput}
  >>>
}