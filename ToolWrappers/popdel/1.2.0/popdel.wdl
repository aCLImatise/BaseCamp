version 1.0

task Popdel {
  command <<<
    popdel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}