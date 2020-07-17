version 1.0

task Carna.pl {
  input {
    Boolean? args
    String input_dot_fa
  }
  command <<<
    carna.pl \
      ~{input_dot_fa} \
      ~{true="--args" false="" args}
  >>>
  parameter_meta {
    args: "Arguments passed to carna. Call carna --help or --args '--help' for the available options of carna."
    input_dot_fa: ""
  }
}