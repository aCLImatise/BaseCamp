version 1.0

task Automakebak {
  command <<<
    automake_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}