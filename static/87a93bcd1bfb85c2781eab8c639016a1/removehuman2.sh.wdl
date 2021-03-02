version 1.0

task Removehuman2sh {
  command <<<
    removehuman2_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}