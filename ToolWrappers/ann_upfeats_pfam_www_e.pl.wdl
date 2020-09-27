version 1.0

task AnnUpfeatsPfamWwwEpl {
  command <<<
    ann_upfeats_pfam_www_e_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}