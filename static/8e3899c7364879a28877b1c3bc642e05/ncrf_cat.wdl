version 1.0

task NcrfCat {
  command <<<
    ncrf_cat
  >>>
  output {
    File out_stdout = stdout()
  }
}