version 1.0

task AnnExonsNcbipl {
  command <<<
    ann_exons_ncbi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}