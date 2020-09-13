version 1.0

task RotateHiCmatrixpl {
  command <<<
    rotateHiCmatrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}