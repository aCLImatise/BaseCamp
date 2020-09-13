version 1.0

task ConvertToFullMatrixpy {
  command <<<
    convertToFullMatrix_py
  >>>
  output {
    File out_stdout = stdout()
  }
}