version 1.0

task Dirname {
  input {
    Boolean? end_output_line
    String? option
    String name_dot_dot_dot
  }
  command <<<
    dirname \
      ~{option} \
      ~{name_dot_dot_dot} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    end_output_line: "end each output line with NUL, not newline"
    option: ""
    name_dot_dot_dot: ""
  }
}