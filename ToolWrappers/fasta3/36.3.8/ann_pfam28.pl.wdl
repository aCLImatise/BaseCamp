version 1.0

task AnnPfam28pl {
  command <<<
    ann_pfam28_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}