version 1.0

task CatSortedSamsh {
  command <<<
    cat_sorted_sam_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}