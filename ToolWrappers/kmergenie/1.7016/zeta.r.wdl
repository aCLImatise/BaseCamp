version 1.0

task Zetar {
  command <<<
    zeta_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}