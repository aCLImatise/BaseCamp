version 1.0

task NormalizeOneDR {
  command <<<
    normalize_oneD_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}