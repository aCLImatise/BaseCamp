version 1.0

task CrimsonPicardOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson picard OPTIONS INPUT \
      ~{outputOutput}
  >>>
}