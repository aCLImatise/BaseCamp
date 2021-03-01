version 1.0

task BigMafToMaf {
  command <<<
    bigMafToMaf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}