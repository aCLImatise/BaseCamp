version 1.0

task Filterfao {
  command <<<
    filterfa_o
  >>>
  output {
    File out_stdout = stdout()
  }
}