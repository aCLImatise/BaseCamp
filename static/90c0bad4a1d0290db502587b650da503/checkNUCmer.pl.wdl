version 1.0

task CheckNUCmerpl {
  command <<<
    checkNUCmer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}