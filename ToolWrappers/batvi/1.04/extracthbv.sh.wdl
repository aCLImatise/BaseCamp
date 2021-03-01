version 1.0

task Extracthbvsh {
  command <<<
    extracthbv_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}