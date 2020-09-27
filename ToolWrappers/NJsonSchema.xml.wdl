version 1.0

task NJsonSchemaxml {
  command <<<
    NJsonSchema_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}