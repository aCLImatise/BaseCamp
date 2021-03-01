version 1.0

task NcrfCat {
  command <<<
    ncrf_cat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}