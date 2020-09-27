version 1.0

task GetMashMatrixpl {
  command <<<
    get_Mash_Matrix_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}