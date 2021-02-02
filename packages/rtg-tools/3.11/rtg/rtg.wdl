version 1.0

task Rtg {
  command <<<
    rtg
  >>>
  output {
    File out_stdout = stdout()
  }
}