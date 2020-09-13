version 1.0

task AnnPfam27pl {
  command <<<
    ann_pfam27_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}