version 1.0

task Dxbuildapplet {
  command <<<
    dx_build_applet
  >>>
  output {
    File out_stdout = stdout()
  }
}