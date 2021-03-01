version 1.0

task LICENSE {
  command <<<
    LICENSE
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}