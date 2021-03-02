version 1.0

task TMscore {
  command <<<
    TMscore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}