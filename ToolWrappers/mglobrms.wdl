version 1.0

task Mglobrms {
  command <<<
    mglobrms
  >>>
  output {
    File out_stdout = stdout()
  }
}