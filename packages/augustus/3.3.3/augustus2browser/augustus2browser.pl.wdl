version 1.0

task Augustus2browserpl {
  command <<<
    augustus2browser_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}