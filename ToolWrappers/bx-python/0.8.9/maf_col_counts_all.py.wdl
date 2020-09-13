version 1.0

task MafColCountsAllpy {
  command <<<
    maf_col_counts_all_py
  >>>
  output {
    File out_stdout = stdout()
  }
}