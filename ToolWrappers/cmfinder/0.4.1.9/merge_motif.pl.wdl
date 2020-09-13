version 1.0

task MergeMotifpl {
  command <<<
    merge_motif_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}