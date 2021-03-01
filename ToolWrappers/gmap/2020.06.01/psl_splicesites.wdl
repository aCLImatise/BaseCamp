version 1.0

task PslSplicesites {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    psl_splicesites \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}