version 1.0

task NormalizeR {
  command <<<
    normalize_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}