version 1.0

task Shmlast {
  command <<<
    shmlast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}