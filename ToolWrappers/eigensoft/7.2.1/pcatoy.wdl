version 1.0

task Pcatoy {
  command <<<
    pcatoy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}