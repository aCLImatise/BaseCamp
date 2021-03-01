version 1.0

task AnnPdbCathpl {
  command <<<
    ann_pdb_cath_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}