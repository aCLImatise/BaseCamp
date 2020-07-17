version 1.0

task SamsifterConnect {
  input {
    Boolean? verbose
    Boolean? debug
    String sam_sifter
  }
  command <<<
    samsifter connect \
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