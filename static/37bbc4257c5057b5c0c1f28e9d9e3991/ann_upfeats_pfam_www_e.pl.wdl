version 1.0

task AnnUpfeatsPfamWwwEpl {
  command <<<
    ann_upfeats_pfam_www_e_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}