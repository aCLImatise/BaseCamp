version 1.0

task AntRunpl {
  command <<<
    antRun_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}