version 1.0

task GetMashMatrixpl {
  command <<<
    get_Mash_Matrix_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}