version 1.0

task MafColCountspy {
  command <<<
    maf_col_counts_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}