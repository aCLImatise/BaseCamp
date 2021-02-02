version 1.0

task FindGOtxtpl {
  command <<<
    findGOtxt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}