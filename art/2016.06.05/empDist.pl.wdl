version 1.0

task EmpDistpl {
  command <<<
    empDist_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}