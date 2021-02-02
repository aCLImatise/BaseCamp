version 1.0

task Funnel {
  command <<<
    funnel
  >>>
  output {
    File out_stdout = stdout()
  }
}