version 1.0

task Vmatchtranspl {
  command <<<
    Vmatchtrans_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}