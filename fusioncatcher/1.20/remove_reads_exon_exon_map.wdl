version 1.0

task RemoveReadsExonExonMap.py {
  input {
    String? input_exon_exon
    String? input_transcriptome
    Boolean? only_pairs
    String? output_exon_exon
  }
  command <<<
    remove_reads_exon_exon_map.py \
      ~{if defined(input_exon_exon) then ("--input_exon_exon " +  '"' + input_exon_exon + '"') else ""} \
      ~{if defined(input_transcriptome) then ("--input_transcriptome " +  '"' + input_transcriptome + '"') else ""} \
      ~{true="--only_pairs" false="" only_pairs} \
      ~{if defined(output_exon_exon) then ("--output_exon_exon " +  '"' + output_exon_exon + '"') else ""}
  >>>
  parameter_meta {
    input_exon_exon: "The input MAP file containing the reads mapping on exon-exon junctions."
    input_transcriptome: "The input MAP file containing the reads mapping on transcriptome."
    only_pairs: "Only reads which form a pair are kept for further analysis (i.e. one read maps on one of the known                       transcripts of the genes involved in the candidate                       fusion and its corresponding mate maps on fusion point which is the exon-exon junction). Default is False."
    output_exon_exon: "The output text file containing all reads mapping on the exon-exon junctions from the input MAP file except the ones which have been removed (because their mates map on other genes than those from which the exons which form the exon-exon junction)."
  }
}