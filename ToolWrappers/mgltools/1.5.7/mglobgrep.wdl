version 1.0

task Mglobgrep {
  command <<<
    mglobgrep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}