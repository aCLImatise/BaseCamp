version 1.0

task GetRecordpy {
  command <<<
    get_record_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}