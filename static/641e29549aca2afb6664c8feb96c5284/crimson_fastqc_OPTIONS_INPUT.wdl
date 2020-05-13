version 1.0

task CrimsonFastqcOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson fastqc OPTIONS INPUT \
      ~{outputOutput}
  >>>
}