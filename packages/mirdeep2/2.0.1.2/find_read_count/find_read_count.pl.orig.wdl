version 1.0

task FindReadCountplorig {
  command <<<
    find_read_count_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}