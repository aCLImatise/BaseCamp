version 1.0

task Faketree {
  command <<<
    faketree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}