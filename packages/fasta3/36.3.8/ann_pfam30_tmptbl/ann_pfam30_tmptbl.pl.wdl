version 1.0

task AnnPfam30Tmptblpl {
  command <<<
    ann_pfam30_tmptbl_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}