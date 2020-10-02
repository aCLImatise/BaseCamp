version 1.0

task Fastasort {
  command <<<
    fastasort
  >>>
  output {
    File out_stdout = stdout()
  }
}