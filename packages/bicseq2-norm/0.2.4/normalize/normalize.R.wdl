version 1.0

task NormalizeR {
  command <<<
    normalize_R
  >>>
  output {
    File out_stdout = stdout()
  }
}