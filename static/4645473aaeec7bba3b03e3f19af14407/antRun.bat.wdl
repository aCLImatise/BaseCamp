version 1.0

task AntRunbat {
  command <<<
    antRun_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}