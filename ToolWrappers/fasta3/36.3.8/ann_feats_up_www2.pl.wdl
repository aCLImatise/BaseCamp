version 1.0

task AnnFeatsUpWww2pl {
  command <<<
    ann_feats_up_www2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}