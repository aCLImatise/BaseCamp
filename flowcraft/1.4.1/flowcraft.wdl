version 1.0

task Flowcraft {
  input {
    Boolean? debug
    Boolean? v
  }
  command <<<
    flowcraft \
      ~{true="--debug" false="" debug} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    debug: "Set log to debug mode"
    v: ""
  }
}