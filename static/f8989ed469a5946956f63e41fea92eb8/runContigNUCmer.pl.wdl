version 1.0

task RunContigNUCmerpl {
  command <<<
    runContigNUCmer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}