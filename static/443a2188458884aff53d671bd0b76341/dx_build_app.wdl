version 1.0

task Dxbuildapp {
  command <<<
    dx_build_app
  >>>
  output {
    File out_stdout = stdout()
  }
}