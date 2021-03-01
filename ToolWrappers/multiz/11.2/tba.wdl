version 1.0

task Tba {
  command <<<
    tba
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}