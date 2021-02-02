version 1.0

task Terminate {
  command <<<
    terminate
  >>>
  output {
    File out_stdout = stdout()
  }
}