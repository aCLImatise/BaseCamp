version 1.0

task DxjobutiladdoutputName {
  input {
    Boolean? var_array
    Boolean? class
    String dx_job_util_add_output
    String? classname
    String name
    String value
  }
  command <<<
    dx_jobutil_add_output name \
      ~{dx_job_util_add_output} \
      ~{classname} \
      ~{name} \
      ~{value} \
      ~{if (var_array) then "--array" else ""} \
      ~{if (class) then "--class" else ""}
  >>>
  runtime {
    docker: "None"
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