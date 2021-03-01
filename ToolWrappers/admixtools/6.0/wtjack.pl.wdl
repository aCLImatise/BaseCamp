version 1.0

task Wtjackpl {
  command <<<
    wtjack_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}