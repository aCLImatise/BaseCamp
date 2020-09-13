version 1.0

task Lprsetupsh {
  command <<<
    lprsetup_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}