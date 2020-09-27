version 1.0

task Bugzscout {
  command <<<
    bugzscout
  >>>
  output {
    File out_stdout = stdout()
  }
}