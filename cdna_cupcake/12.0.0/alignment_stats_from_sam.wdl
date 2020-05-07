version 1.0

task AlignmentStatsFromSam.py {
  input {
    String inputInput
    String samSamFilename
    String genomeGenomeFilename
    String outputOutputPrefix
    String gffGff
  }
  command <<<
    alignment_stats_from_sam.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(samSamFilename) then ("--sam_filename " +  '"' + samSamFilename + '"') else ""} \
      ~{if defined(genomeGenomeFilename) then ("--genome_filename " +  '"' + genomeGenomeFilename + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""}
  >>>
}