version 1.0

task CrimsonStarFusionOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson star-fusion OPTIONS INPUT \
      ~{outputOutput}
  >>>
}