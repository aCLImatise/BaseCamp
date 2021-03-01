version 1.0

task Jaffadirect {
  command <<<
    jaffa_direct
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}