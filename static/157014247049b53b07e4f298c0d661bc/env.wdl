version 1.0

task Env {
  input {
    Boolean? ignore_environment
    Boolean? null
    String? unset
    String? option
  }
  command <<<
    env \
      ~{option} \
      ~{true="--ignore-environment" false="" ignore_environment} \
      ~{true="--null" false="" null} \
      ~{if defined(unset) then ("--unset " +  '"' + unset + '"') else ""}
  >>>
  parameter_meta {
    ignore_environment: "start with an empty environment"
    null: "end each output line with NUL, not newline"
    unset: "remove variable from the environment"
    option: ""
  }
}