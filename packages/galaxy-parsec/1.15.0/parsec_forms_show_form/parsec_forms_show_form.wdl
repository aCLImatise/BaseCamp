version 1.0

task ParsecFormsShowForm {
  input {
    String form_id
  }
  command <<<
    parsec forms show_form \
      ~{form_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    form_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}