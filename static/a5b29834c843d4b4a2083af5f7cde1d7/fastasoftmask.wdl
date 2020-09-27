version 1.0

task Fastasoftmask {
  command <<<
    fastasoftmask
  >>>
  output {
    File out_stdout = stdout()
  }
}