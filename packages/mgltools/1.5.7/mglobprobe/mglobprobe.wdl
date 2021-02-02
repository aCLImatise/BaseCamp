version 1.0

task Mglobprobe {
  command <<<
    mglobprobe
  >>>
  output {
    File out_stdout = stdout()
  }
}