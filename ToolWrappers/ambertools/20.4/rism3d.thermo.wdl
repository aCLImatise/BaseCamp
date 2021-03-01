version 1.0

task Rism3dthermo {
  command <<<
    rism3d_thermo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}