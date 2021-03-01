version 1.0

task Jaffahybrid {
  command <<<
    jaffa_hybrid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}