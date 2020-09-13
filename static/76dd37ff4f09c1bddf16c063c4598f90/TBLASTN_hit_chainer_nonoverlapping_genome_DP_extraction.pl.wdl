version 1.0

task TBLASTNHitChainerNonoverlappingGenomeDPExtractionpl {
  command <<<
    TBLASTN_hit_chainer_nonoverlapping_genome_DP_extraction_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}