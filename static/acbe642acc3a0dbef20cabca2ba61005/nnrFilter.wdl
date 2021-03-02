version 1.0

task NnrFilter {
  command <<<
    nnrFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}