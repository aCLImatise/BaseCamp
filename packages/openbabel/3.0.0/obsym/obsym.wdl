version 1.0

task Obsym {
  command <<<
    obsym
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}