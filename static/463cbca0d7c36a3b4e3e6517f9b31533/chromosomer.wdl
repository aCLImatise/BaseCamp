version 1.0

task Chromosomer {
  input {
    Boolean? debug
    Boolean? v
  }
  command <<<
    chromosomer \
      ~{true="--debug" false="" debug} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    debug: "show debugging messages"
    v: ""
  }
}