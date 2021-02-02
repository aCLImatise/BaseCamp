version 1.0

task AnnIprWwwpl {
  command <<<
    ann_ipr_www_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}