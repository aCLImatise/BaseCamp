version 1.0

task MakePeakMatrixR {
  command <<<
    makePeakMatrix_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}