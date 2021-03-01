version 1.0

task RemoveRCpy {
  command <<<
    removeRC_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}