version 1.0

task Restml {
  command <<<
    restml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}