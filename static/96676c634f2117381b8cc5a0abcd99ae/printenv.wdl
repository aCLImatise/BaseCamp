version 1.0

task Printenv {
  input {
    Boolean? null
    String? option
  }
  command <<<
    printenv \
      ~{option} \
      ~{true="--null" false="" null}
  >>>
  parameter_meta {
    null: "end each output line with NUL, not newline"
    option: ""
  }
}