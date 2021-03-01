version 1.0

task AntRun {
  command <<<
    antRun
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}