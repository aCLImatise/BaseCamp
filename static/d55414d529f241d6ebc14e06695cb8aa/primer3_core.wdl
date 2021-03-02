version 1.0

task Primer3Core {
  input {
    Boolean? format_output
  }
  command <<<
    primer3_core \
      ~{if (format_output) then "--format_output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}