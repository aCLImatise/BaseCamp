version 1.0

task Bfsh {
  command <<<
    bf_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}