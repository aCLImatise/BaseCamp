version 1.0

task ShiverReprocessBamsh {
  command <<<
    shiver_reprocess_bam_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}