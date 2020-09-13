version 1.0

task MergeBlastBtabpl {
  command <<<
    merge_blast_btab_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}