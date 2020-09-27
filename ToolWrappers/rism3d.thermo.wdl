version 1.0

task Rism3dthermo {
  command <<<
    rism3d_thermo
  >>>
  output {
    File out_stdout = stdout()
  }
}