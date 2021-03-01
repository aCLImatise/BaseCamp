version 1.0

task Dxbuildapplet {
  command <<<
    dx_build_applet
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}