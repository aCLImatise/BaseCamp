version 1.0

task CrimsonFlagstatOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson flagstat OPTIONS INPUT \
      ~{outputOutput}
  >>>
}