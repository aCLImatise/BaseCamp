version 1.0

task FindFusionGenesMap.py {
  input {
    String? input_file_bowtie
    String? filter_gene_pairs
    String? filter_genes
    String? input_hugo
    String? output_fusion_genes
    String? output_fusion_transcripts
    String? output_fusion_reads
    String? output_fusion_reads_split
    String? output_fusion_reads_simple
    String? output_missing_mate_reads
  }
  command <<<
    find_fusion_genes_map.py \
      ~{if defined(input_file_bowtie) then ("--input " +  '"' + input_file_bowtie + '"') else ""} \
      ~{if defined(filter_gene_pairs) then ("--filter_gene_pairs " +  '"' + filter_gene_pairs + '"') else ""} \
      ~{if defined(filter_genes) then ("--filter_genes " +  '"' + filter_genes + '"') else ""} \
      ~{if defined(input_hugo) then ("--input_hugo " +  '"' + input_hugo + '"') else ""} \
      ~{if defined(output_fusion_genes) then ("--output_fusion_genes " +  '"' + output_fusion_genes + '"') else ""} \
      ~{if defined(output_fusion_transcripts) then ("--output_fusion_transcripts " +  '"' + output_fusion_transcripts + '"') else ""} \
      ~{if defined(output_fusion_reads) then ("--output_fusion_reads " +  '"' + output_fusion_reads + '"') else ""} \
      ~{if defined(output_fusion_reads_split) then ("--output_fusion_reads_split " +  '"' + output_fusion_reads_split + '"') else ""} \
      ~{if defined(output_fusion_reads_simple) then ("--output_fusion_reads_simple " +  '"' + output_fusion_reads_simple + '"') else ""} \
      ~{if defined(output_missing_mate_reads) then ("--output_missing_mate_reads " +  '"' + output_missing_mate_reads + '"') else ""}
  >>>
  parameter_meta {
    input_file_bowtie: "The input file in Bowtie MAP format (sorted by read name, i.e. column number 1) containing the short reads mapped on the transcripts. This should contain paired- end data."
    filter_gene_pairs: "The input text file tab separated format containg gene pairs which should be removed from the output fusion- genes list."
    filter_genes: "The input text file containing genes (one gene on each line) which should be removed from the output fusion- genes list."
    input_hugo: "The input database used for linking ENSEMBL GENE ID to HUGO gene names."
    output_fusion_genes: "The output text tab-separated file containing the candidate fusion genes (the genes are sorted alphabetically on the each line)."
    output_fusion_transcripts: "The output text tab-separated file containing the candidate fusion transcripts (the genes are sorted alphabetically on the each line)."
    output_fusion_reads: "The output text tab-separated file containing the candidate fusion genes and transcripts together with the ids/names of supporting reads."
    output_fusion_reads_split: "A file containing paths to candidate fusion genes and transcripts together with the ids/names of supporting reads."
    output_fusion_reads_simple: "The output text file containing one each line reads ids of the supporting reads."
    output_missing_mate_reads: "The output text tab-separated file containing the reads which have their mate read not mapped together to the gene name on which they map."
  }
}