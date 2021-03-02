version 1.0

task CheckFCSR {
  command <<<
    checkFCS_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}