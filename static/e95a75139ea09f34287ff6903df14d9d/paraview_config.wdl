version 1.0

task Paraviewconfig {
  command <<<
    paraview_config
  >>>
  output {
    File out_stdout = stdout()
  }
}