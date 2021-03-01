version 1.0

task EmpDistpl {
  command <<<
    empDist_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}