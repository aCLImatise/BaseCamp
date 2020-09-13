version 1.0

task Fastqqc {
  command <<<
    fastqqc
  >>>
  output {
    File out_stdout = stdout()
  }
}