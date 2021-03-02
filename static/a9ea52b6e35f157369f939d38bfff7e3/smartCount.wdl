version 1.0

task SmartCount {
  command <<<
    smartCount
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}