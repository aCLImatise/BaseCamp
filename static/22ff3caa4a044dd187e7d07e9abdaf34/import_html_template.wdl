version 1.0

task ImportHtmlTemplate {
  input {
    String variable_name
    File file_name
  }
  command <<<
    import-html-template \
      ~{variable_name} \
      ~{file_name}
  >>>
  parameter_meta {
    variable_name: ""
    file_name: ""
  }
}