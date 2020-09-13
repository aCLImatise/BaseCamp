version 1.0

task Wtjackpl {
  command <<<
    wtjack_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}