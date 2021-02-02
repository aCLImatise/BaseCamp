version 1.0

task Easel {
  command <<<
    easel
  >>>
  output {
    File out_stdout = stdout()
  }
}