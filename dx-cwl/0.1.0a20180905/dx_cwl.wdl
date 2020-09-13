version 1.0

task Dxcwl {
  command <<<
    dx_cwl
  >>>
  output {
    File out_stdout = stdout()
  }
}