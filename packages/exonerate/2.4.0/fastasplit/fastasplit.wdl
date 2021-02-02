version 1.0

task Fastasplit {
  command <<<
    fastasplit
  >>>
  output {
    File out_stdout = stdout()
  }
}