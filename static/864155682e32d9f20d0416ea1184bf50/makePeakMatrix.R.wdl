version 1.0

task MakePeakMatrixR {
  command <<<
    makePeakMatrix_R
  >>>
  output {
    File out_stdout = stdout()
  }
}