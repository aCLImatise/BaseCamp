version 1.0

task MafShuffleColumnspy {
  command <<<
    maf_shuffle_columns_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}