version 1.0

task SamsifterTo {
  input {
    Boolean? verbose
    Boolean? debug
    String sam_sifter
  }
  command <<<
    samsifter to \
      ~{sam_sifter} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    verbose: "print additional information to stderr"
    debug: "show debug options in menu"
    sam_sifter: ""
  }
}