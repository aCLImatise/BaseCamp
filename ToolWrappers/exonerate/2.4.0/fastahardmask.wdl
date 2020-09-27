version 1.0

task Fastahardmask {
  command <<<
    fastahardmask
  >>>
  output {
    File out_stdout = stdout()
  }
}