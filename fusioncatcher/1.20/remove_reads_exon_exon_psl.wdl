version 1.0

task RemoveReadsExonExonPsl.py {
  input {
    String? input_psl
    String? input_transcriptome
    String? output_psl
  }
  command <<<
    remove_reads_exon_exon_psl.py \
      ~{if defined(input_psl) then ("--input_psl " +  '"' + input_psl + '"') else ""} \
      ~{if defined(input_transcriptome) then ("--input_transcriptome " +  '"' + input_transcriptome + '"') else ""} \
      ~{if defined(output_psl) then ("--output_psl " +  '"' + output_psl + '"') else ""}
  >>>
  parameter_meta {
    input_psl: "The input PSL file (output of BLAT) containing the reads mapping gene-gene sequence."
    input_transcriptome: "The input MAP file containing the reads mapping on transcriptome."
    output_psl: "The output text file containing all reads mapping on the from the input PSL file except the ones which have been removed (because their mates map on other genes than those from which form the candidate fusion)."
  }
}