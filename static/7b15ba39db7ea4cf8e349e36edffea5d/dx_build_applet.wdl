version 1.0

task Dxbuildapplet {
  command <<<
    dx_build_applet
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}