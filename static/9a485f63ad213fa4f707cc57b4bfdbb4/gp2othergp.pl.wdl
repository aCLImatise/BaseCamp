version 1.0

task Gp2othergppl {
  command <<<
    gp2othergp_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}