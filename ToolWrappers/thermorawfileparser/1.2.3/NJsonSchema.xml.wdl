version 1.0

task NJsonSchemaxml {
  command <<<
    NJsonSchema_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}