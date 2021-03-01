version 1.0

task MaxentscanScore3pl {
  command <<<
    maxentscan_score3_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}