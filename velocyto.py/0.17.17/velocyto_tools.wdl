version 1.0

task VelocytoTools {
  command <<<
    velocyto tools
  >>>
  output {
    File out_stdout = stdout()
  }
}