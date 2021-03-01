version 1.0

task Ljresid {
  command <<<
    ljresid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}