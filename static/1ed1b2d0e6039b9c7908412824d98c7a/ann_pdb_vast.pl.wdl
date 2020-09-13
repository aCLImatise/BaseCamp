version 1.0

task AnnPdbVastpl {
  command <<<
    ann_pdb_vast_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}