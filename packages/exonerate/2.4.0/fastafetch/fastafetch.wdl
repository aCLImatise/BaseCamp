version 1.0

task Fastafetch {
  command <<<
    fastafetch
  >>>
  output {
    File out_stdout = stdout()
  }
}