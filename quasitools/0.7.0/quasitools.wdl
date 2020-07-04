version 1.0

task Quasitools {
  input {
    Boolean? verbose
  }
  command <<<
    quasitools \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
  }
}