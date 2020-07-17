version 1.0

task GenerateExonExonJunctions.py {
  input {
    String? input_fusion_genes
    String? input_fast_a_transcripts
    String? input_database_transcripts
    String? overlap_read
    Int? length_reads_filename
    Int? length_reads
    Boolean? unique_cut_sequences
    Boolean? unique_cut_sequences_same_pair
    String? output_cut_junction
    String? output_full_junction
    String? output_unique_cut_sequences_same_pair
    String? output_count_seq
    String? output_count_nuc
  }
  command <<<
    generate_exon-exon_junctions.py \
      ~{if defined(input_fusion_genes) then ("--input_fusion_genes " +  '"' + input_fusion_genes + '"') else ""} \
      ~{if defined(input_fast_a_transcripts) then ("--input_fasta_transcripts " +  '"' + input_fast_a_transcripts + '"') else ""} \
      ~{if defined(input_database_transcripts) then ("--input_database_transcripts " +  '"' + input_database_transcripts + '"') else ""} \
      ~{if defined(overlap_read) then ("--overlap_read " +  '"' + overlap_read + '"') else ""} \
      ~{if defined(length_reads_filename) then ("--length_reads_filename " +  '"' + length_reads_filename + '"') else ""} \
      ~{if defined(length_reads) then ("--length_reads " +  '"' + length_reads + '"') else ""} \
      ~{true="--unique_cut_sequences" false="" unique_cut_sequences} \
      ~{true="--unique_cut_sequences_same_pair" false="" unique_cut_sequences_same_pair} \
      ~{if defined(output_cut_junction) then ("--output_cut_junction " +  '"' + output_cut_junction + '"') else ""} \
      ~{if defined(output_full_junction) then ("--output_full_junction " +  '"' + output_full_junction + '"') else ""} \
      ~{if defined(output_unique_cut_sequences_same_pair) then ("--output_unique_cut_sequences_same_pair " +  '"' + output_unique_cut_sequences_same_pair + '"') else ""} \
      ~{if defined(output_count_seq) then ("--output_count_seq " +  '"' + output_count_seq + '"') else ""} \
      ~{if defined(output_count_nuc) then ("--output_count_nuc " +  '"' + output_count_nuc + '"') else ""}
  >>>
  parameter_meta {
    input_fusion_genes: "The input file in text tab delimited format containing the fusion genes candidates produced by 'extract_fusion_genes.py'. This is optional and if it is not specified all exon-exon junctions will be generated for all genes from the database."
    input_fast_a_transcripts: "The input FASTA files containing the transcripts, e.g. data/ensembl/transcripts.fa."
    input_database_transcripts: "The input text file containg information regarding the transcripts, e.g. data/ensembl/transcripts.txt."
    overlap_read: "The minimum length of the overlapping region between the read the exon-exon juntion. Length_of_the_exon- exon_juntion = 2 * (length_reads - overlap_read). The joint point is at the middle point of the exon-exon junction. Default value is 15."
    length_reads_filename: "A text file containing on the first line the length of the reads."
    length_reads: "The length of the reads."
    unique_cut_sequences: "It outputs only the unique cut sequences (of exon-exon junctions). Default value is False. This is a dangerous option and it is highly recommended to be set on false always.!"
    unique_cut_sequences_same_pair: "It outputs only the unique cut sequences (of exon-exon junctions) within the given pair of genes. Default value is False."
    output_cut_junction: "A FASTA file containing the exon-exon junctions where the cutting is done according to the options '-- overlap_read' and '--length_reads'."
    output_full_junction: "A FASTA file containing the exon-exon junctions where the cutting is not done."
    output_unique_cut_sequences_same_pair: "In case the option '--unique_cut_sequences_same_pair' is used it outputs in a file all the names of the sequences for which the sequences are the same."
    output_count_seq: "If used then the number of sequences from the output FASTA file (i.e. --output_cut_junction) will be reported."
    output_count_nuc: "If used then the number of nucleotides of all sequences from the output FASTA file (i.e. --output_cut_junction) will be reported."
  }
}