version 1.0

task NcrfCatpy {
  command <<<
    ncrf_cat_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}