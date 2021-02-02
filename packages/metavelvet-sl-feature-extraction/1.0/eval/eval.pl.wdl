version 1.0

task Evalpl {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    eval_pl \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}