version 1.0

task FunnelAws {
  command <<<
    funnel aws
  >>>
  output {
    File out_stdout = stdout()
  }
}