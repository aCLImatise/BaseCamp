version 1.0

task AnnFeats2iprEpl {
  command <<<
    ann_feats2ipr_e_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}