version 1.0

task Hnumpl {
  command <<<
    h_num_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}