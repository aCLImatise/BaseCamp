version 1.0

task Strudel {
  command <<<
    strudel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}