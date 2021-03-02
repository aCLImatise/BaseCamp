version 1.0

task Sdfield {
  input {
    String field_name
    String this
    String value
  }
  command <<<
    sdfield \
      ~{field_name} \
      ~{this} \
      ~{value}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    field_name: ""
    this: ""
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}