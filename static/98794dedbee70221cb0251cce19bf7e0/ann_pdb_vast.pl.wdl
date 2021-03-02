version 1.0

task AnnPdbVastpl {
  command <<<
    ann_pdb_vast_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}