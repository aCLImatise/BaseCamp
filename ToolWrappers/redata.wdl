version 1.0

task Redata {
  command <<<
    redata
  >>>
  output {
    File out_stdout = stdout()
  }
}