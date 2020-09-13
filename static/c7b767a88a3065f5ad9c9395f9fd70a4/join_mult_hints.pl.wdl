version 1.0

task JoinMultHintspl {
  command <<<
    join_mult_hints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}