version 1.0

task FragGeneScan {
  command <<<
    FragGeneScan
  >>>
  output {
    File out_stdout = stdout()
  }
}