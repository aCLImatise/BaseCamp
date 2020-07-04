version 1.0

task Whatshap {
  input {
    Boolean? debug
  }
  command <<<
    whatshap \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "Print debug messages"
  }
}