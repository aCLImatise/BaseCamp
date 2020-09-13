version 1.0

task AnnPfam30pl {
  command <<<
    ann_pfam30_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}