version 1.0

task Fastadiff {
  command <<<
    fastadiff
  >>>
  output {
    File out_stdout = stdout()
  }
}