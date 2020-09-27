version 1.0

task FindRascafEffectivepl {
  command <<<
    FindRascafEffective_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}