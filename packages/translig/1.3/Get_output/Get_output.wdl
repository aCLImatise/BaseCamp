version 1.0

task GetOutput {
  command <<<
    Get_output
  >>>
  output {
    File out_stdout = stdout()
  }
}