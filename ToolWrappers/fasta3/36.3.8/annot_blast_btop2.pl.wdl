version 1.0

task AnnotBlastBtop2pl {
  command <<<
    annot_blast_btop2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}