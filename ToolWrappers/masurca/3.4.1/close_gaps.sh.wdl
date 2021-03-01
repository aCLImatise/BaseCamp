version 1.0

task CloseGapssh {
  command <<<
    close_gaps_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}