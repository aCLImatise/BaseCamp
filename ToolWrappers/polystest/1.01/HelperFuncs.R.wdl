version 1.0

task HelperFuncsR {
  command <<<
    HelperFuncs_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}