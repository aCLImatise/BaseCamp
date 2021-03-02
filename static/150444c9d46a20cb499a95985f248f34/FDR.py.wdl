version 1.0

task FDRpy {
  command <<<
    FDR_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}