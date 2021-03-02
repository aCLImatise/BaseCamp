version 1.0

task Getlengths {
  command <<<
    getlengths
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}