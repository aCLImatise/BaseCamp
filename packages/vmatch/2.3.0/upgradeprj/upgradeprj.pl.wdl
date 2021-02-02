version 1.0

task Upgradeprjpl {
  command <<<
    upgradeprj_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}