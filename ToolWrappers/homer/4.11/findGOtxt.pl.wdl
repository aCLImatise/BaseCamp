version 1.0

task FindGOtxtpl {
  command <<<
    findGOtxt_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}