version 1.0

task Ijview {
  command <<<
    ijview
  >>>
  output {
    File out_stdout = stdout()
  }
}