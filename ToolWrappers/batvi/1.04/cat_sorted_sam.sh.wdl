version 1.0

task CatSortedSamsh {
  command <<<
    cat_sorted_sam_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}