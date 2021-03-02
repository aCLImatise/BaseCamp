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
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    variable_name: ""
    file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}