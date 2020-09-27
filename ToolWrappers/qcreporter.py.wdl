version 1.0

task Qcreporterpy {
  command <<<
    qcreporter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}