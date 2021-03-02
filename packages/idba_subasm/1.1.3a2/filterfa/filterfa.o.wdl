version 1.0

task Filterfao {
  command <<<
    filterfa_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}