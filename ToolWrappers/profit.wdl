version 1.0

task Profit {
  command <<<
    profit
  >>>
  output {
    File out_stdout = stdout()
  }
}