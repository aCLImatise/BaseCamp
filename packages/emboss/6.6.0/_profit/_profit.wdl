version 1.0

task Profit {
  command <<<
    _profit
  >>>
  output {
    File out_stdout = stdout()
  }
}