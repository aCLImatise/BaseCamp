version 1.0

task Dustmasker {
  command <<<
    dustmasker
  >>>
  output {
    File out_stdout = stdout()
  }
}