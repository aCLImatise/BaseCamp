version 1.0

task MafColCountsAllpy {
  command <<<
    maf_col_counts_all_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}