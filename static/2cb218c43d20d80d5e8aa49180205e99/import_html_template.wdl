version 1.0

task Importhtmltemplate {
  input {
    String variable_name
    File file_name
  }
  command <<<
    import_html_template \
      ~{variable_name} \
      ~{file_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    variable_name: ""
    file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}