version 1.0

task ShiverAlignContigssh {
  command <<<
    shiver_align_contigs_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}