version 1.0

task Logname {
  command <<<
    logname
  >>>
  output {
    File out_stdout = stdout()
  }
}