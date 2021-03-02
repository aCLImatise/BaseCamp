version 1.0

task ChakinExportExportGff3 {
  input {
    String options
  }
  command <<<
    chakin export export_gff3 \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}