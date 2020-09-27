version 1.0

task RmRedundantHintspl {
  command <<<
    rmRedundantHints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}