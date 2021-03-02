version 1.0

task GetOutput {
  command <<<
    Get_output
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}