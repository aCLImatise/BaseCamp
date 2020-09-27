version 1.0

task NormalizeOneDR {
  command <<<
    normalize_oneD_R
  >>>
  output {
    File out_stdout = stdout()
  }
}