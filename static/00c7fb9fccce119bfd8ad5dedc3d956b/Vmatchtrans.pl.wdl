version 1.0

task Vmatchtranspl {
  command <<<
    Vmatchtrans_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}