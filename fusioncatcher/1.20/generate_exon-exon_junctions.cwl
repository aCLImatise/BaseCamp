#!/usr/bin/env cwl-runner

baseCommand:
- generate_exon-exon_junctions.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_exon-exon_junctions.py
inputs:
- doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'extract_fusion_genes.py'. This is optional and if it is not specified
    all exon-exon junctions will be generated for all genes from the database.
  id: input_fusion_genes
  inputBinding:
    prefix: --input_fusion_genes
  type: string
- doc: The input FASTA files containing the transcripts, e.g. data/ensembl/transcripts.fa.
  id: input_fast_a_transcripts
  inputBinding:
    prefix: --input_fasta_transcripts
  type: string
- doc: The input text file containg information regarding the transcripts, e.g. data/ensembl/transcripts.txt.
  id: input_database_transcripts
  inputBinding:
    prefix: --input_database_transcripts
  type: string
- doc: The minimum length of the overlapping region between the read the exon-exon
    juntion. Length_of_the_exon- exon_juntion = 2 * (length_reads - overlap_read).
    The joint point is at the middle point of the exon-exon junction. Default value
    is 15.
  id: overlap_read
  inputBinding:
    prefix: --overlap_read
  type: string
- doc: A text file containing on the first line the length of the reads.
  id: length_reads_filename
  inputBinding:
    prefix: --length_reads_filename
  type: long
- doc: The length of the reads.
  id: length_reads
  inputBinding:
    prefix: --length_reads
  type: long
- doc: It outputs only the unique cut sequences (of exon-exon junctions). Default
    value is False. This is a dangerous option and it is highly recommended to be
    set on false always.!
  id: unique_cut_sequences
  inputBinding:
    prefix: --unique_cut_sequences
  type: boolean
- doc: It outputs only the unique cut sequences (of exon-exon junctions) within the
    given pair of genes. Default value is False.
  id: unique_cut_sequences_same_pair
  inputBinding:
    prefix: --unique_cut_sequences_same_pair
  type: boolean
- doc: A FASTA file containing the exon-exon junctions where the cutting is done according
    to the options '-- overlap_read' and '--length_reads'.
  id: output_cut_junction
  inputBinding:
    prefix: --output_cut_junction
  type: string
- doc: A FASTA file containing the exon-exon junctions where the cutting is not done.
  id: output_full_junction
  inputBinding:
    prefix: --output_full_junction
  type: string
- doc: In case the option '--unique_cut_sequences_same_pair' is used it outputs in
    a file all the names of the sequences for which the sequences are the same.
  id: output_unique_cut_sequences_same_pair
  inputBinding:
    prefix: --output_unique_cut_sequences_same_pair
  type: string
- doc: If used then the number of sequences from the output FASTA file (i.e. --output_cut_junction)
    will be reported.
  id: output_count_seq
  inputBinding:
    prefix: --output_count_seq
  type: string
- doc: If used then the number of nucleotides of all sequences from the output FASTA
    file (i.e. --output_cut_junction) will be reported.
  id: output_count_nuc
  inputBinding:
    prefix: --output_count_nuc
  type: string
