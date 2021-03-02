version 1.0

task AnnExonsEnspl {
  command <<<
    ann_exons_ens_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}