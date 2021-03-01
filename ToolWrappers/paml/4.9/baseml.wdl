version 1.0

task Baseml {
  command <<<
    baseml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}