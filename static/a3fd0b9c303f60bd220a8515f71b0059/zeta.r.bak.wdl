version 1.0

task Zetarbak {
  command <<<
    zeta_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}