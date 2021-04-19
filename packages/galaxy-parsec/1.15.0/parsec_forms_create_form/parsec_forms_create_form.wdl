version 1.0

task ParsecFormsCreateForm {
  input {
    String form_xml_text
  }
  command <<<
    parsec forms create_form \
      ~{form_xml_text}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    form_xml_text: ""
  }
  output {
    File out_stdout = stdout()
  }
}