version 1.0

task AnnFeats2iprpl {
  command <<<
    ann_feats2ipr_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}