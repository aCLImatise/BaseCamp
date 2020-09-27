version 1.0

task Bmge {
  command <<<
    bmge
  >>>
  output {
    File out_stdout = stdout()
  }
}