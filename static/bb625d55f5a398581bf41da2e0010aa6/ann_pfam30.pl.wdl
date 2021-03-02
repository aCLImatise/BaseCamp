version 1.0

task AnnPfam30pl {
  command <<<
    ann_pfam30_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}