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
    docker: "None"
  }
  parameter_meta {
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}