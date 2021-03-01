version 1.0

task Roast {
  command <<<
    roast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}