version 1.0

task FindReadCountplorig {
  command <<<
    find_read_count_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}