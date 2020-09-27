version 1.0

task Gp2othergppl {
  command <<<
    gp2othergp_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}