version 1.0

task FragGeneScan {
  command <<<
    FragGeneScan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}