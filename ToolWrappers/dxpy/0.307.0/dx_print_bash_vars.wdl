version 1.0

task Dxprintbashvars {
  command <<<
    dx_print_bash_vars
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}