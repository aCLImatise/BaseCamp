version 1.0

task Promlk {
  command <<<
    promlk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}