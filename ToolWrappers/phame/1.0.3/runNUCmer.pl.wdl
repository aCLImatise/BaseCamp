version 1.0

task RunNUCmerpl {
  command <<<
    runNUCmer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}