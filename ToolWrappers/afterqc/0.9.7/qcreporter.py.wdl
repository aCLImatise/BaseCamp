version 1.0

task Qcreporterpy {
  command <<<
    qcreporter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}