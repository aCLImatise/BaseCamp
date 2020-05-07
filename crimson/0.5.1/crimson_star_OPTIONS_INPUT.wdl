version 1.0

task CrimsonStarOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson star OPTIONS INPUT \
      ~{outputOutput}
  >>>
}