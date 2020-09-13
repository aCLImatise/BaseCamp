version 1.0

task Acdgalaxy {
  command <<<
    acdgalaxy
  >>>
  output {
    File out_stdout = stdout()
  }
}