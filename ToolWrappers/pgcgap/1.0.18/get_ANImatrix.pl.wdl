version 1.0

task GetANImatrixpl {
  command <<<
    get_ANImatrix_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}