version 1.0

task LoadFusionChromSeqStd {
  command <<<
    load_fusion_chrom_seq_std
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}