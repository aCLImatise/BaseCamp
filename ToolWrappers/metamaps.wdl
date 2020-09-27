version 1.0

task Metamaps {
  command <<<
    metamaps
  >>>
  output {
    File out_stdout = stdout()
  }
}