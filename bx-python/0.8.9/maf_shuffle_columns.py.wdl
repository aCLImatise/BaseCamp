version 1.0

task MafShuffleColumnspy {
  command <<<
    maf_shuffle_columns_py
  >>>
  output {
    File out_stdout = stdout()
  }
}