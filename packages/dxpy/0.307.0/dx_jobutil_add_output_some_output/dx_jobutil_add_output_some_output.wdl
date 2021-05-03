version 1.0

task DxjobutiladdoutputSomeOutput {
  input {
    Boolean? var_array
    Boolean? class
    String dx_job_util_add_output
    String? classname
    String name
    String value
  }
  command <<<
    dx_jobutil_add_output some_output \
      ~{dx_job_util_add_output} \
      ~{classname} \
      ~{name} \
      ~{value} \
      ~{if (var_array) then "--array" else ""} \
      ~{if (class) then "--class" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    var_array: ""
    class: ""
    dx_job_util_add_output: ""
    classname: ""
    name: ""
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}