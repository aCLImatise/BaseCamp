version 1.0

task AnnExonsEnspl {
  command <<<
    ann_exons_ens_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}