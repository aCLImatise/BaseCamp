version 1.0

task GetANImatrixpl {
  command <<<
    get_ANImatrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}