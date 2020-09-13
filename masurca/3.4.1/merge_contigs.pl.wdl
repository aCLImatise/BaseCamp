version 1.0

task MergeContigspl {
  command <<<
    merge_contigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}