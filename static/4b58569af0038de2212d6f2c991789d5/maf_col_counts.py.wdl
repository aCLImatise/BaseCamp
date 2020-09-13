version 1.0

task MafColCountspy {
  command <<<
    maf_col_counts_py
  >>>
  output {
    File out_stdout = stdout()
  }
}