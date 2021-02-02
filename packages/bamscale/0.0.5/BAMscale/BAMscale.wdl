version 1.0

task BAMscale {
  command <<<
    BAMscale
  >>>
  output {
    File out_stdout = stdout()
  }
}