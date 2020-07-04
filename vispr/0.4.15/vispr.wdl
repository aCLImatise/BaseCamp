version 1.0

task Vispr {
  input {
    Boolean? debug
  }
  command <<<
    vispr \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "Print debug info."
  }
}