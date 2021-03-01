version 1.0

task Dirname {
  input {
    Boolean? end_output_line
    String name_dot_dot_dot
  }
  command <<<
    dirname \
      ~{name_dot_dot_dot} \
      ~{if (end_output_line) then "--zero" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    end_output_line: "end each output line with NUL, not newline"
    name_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}