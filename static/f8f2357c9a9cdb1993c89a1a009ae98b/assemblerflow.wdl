version 1.0

task Assemblerflow {
  input {
    Boolean? debug
  }
  command <<<
    assemblerflow \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "Set log to debug mode"
  }
}