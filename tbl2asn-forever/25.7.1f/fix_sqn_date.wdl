version 1.0

task Fixsqndate {
  command <<<
    fix_sqn_date
  >>>
  output {
    File out_stdout = stdout()
  }
}