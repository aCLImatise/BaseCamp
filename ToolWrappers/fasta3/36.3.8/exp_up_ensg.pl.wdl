version 1.0

task ExpUpEnsgpl {
  command <<<
    exp_up_ensg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}