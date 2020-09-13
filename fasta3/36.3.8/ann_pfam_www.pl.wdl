version 1.0

task AnnPfamWwwpl {
  command <<<
    ann_pfam_www_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}