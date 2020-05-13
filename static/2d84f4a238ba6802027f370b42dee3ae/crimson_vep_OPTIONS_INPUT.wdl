version 1.0

task CrimsonVepOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson vep OPTIONS INPUT \
      ~{outputOutput}
  >>>
}