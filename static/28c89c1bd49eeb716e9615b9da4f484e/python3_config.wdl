version 1.0

task Python3config {
  command <<<
    python3_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}