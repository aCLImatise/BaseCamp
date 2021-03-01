version 1.0

task Paraviewconfig {
  command <<<
    paraview_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}