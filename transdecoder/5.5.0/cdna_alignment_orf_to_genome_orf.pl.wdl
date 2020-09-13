version 1.0

task CdnaAlignmentOrfToGenomeOrfpl {
  command <<<
    cdna_alignment_orf_to_genome_orf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}