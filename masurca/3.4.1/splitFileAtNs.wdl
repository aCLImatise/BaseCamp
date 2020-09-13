version 1.0

task SplitFileAtNs {
  command <<<
    splitFileAtNs
  >>>
  output {
    File out_stdout = stdout()
  }
}