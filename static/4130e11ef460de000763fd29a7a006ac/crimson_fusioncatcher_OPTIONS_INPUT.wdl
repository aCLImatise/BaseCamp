version 1.0

task CrimsonFusioncatcherOPTIONSINPUT {
  input {
    String? outputOutput
  }
  command <<<
    crimson fusioncatcher OPTIONS INPUT \
      ~{outputOutput}
  >>>
}