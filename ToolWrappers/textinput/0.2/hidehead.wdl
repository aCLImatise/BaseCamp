version 1.0

task Hidehead {
  command <<<
    hidehead
  >>>
  output {
    File out_stdout = stdout()
  }
}