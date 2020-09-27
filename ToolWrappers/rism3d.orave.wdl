version 1.0

task Rism3dorave {
  command <<<
    rism3d_orave
  >>>
  output {
    File out_stdout = stdout()
  }
}