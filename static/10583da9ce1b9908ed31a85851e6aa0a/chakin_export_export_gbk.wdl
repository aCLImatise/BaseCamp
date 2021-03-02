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
    docker: "None"
  }
  parameter_meta {
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}