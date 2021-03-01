version 1.0

task ChakinExportExportGbk {
  input {
    String options
  }
  command <<<
    chakin export export_gbk \
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