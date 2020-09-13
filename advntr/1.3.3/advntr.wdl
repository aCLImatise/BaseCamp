version 1.0

task Advntr {
  command <<<
    advntr
  >>>
  output {
    File out_stdout = stdout()
  }
}