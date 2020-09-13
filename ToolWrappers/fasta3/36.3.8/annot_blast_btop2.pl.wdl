version 1.0

task AnnotBlastBtop2pl {
  command <<<
    annot_blast_btop2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}