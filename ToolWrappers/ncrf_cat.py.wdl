version 1.0

task NcrfCatpy {
  command <<<
    ncrf_cat_py
  >>>
  output {
    File out_stdout = stdout()
  }
}