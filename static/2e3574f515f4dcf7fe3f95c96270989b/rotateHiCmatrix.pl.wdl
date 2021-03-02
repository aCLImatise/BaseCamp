version 1.0

task RotateHiCmatrixpl {
  command <<<
    rotateHiCmatrix_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}