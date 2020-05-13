class: CommandLineTool
id: generate_exon_exon_junctions.py.cwl
inputs:
- id: input_fusion_genes
  doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'extract_fusion_genes.py'. This is optional and if it is not specified
    all exon-exon junctions will be generated for all genes from the database.
  type: string
  inputBinding:
    prefix: --input_fusion_genes
- id: input_fast_a_transcripts
  doc: The input FASTA files containing the transcripts, e.g. data/ensembl/transcripts.fa.
  type: string
  inputBinding:
    prefix: --input_fasta_transcripts
- id: input_database_transcripts
  doc: The input text file containg information regarding the transcripts, e.g. data/ensembl/transcripts.txt.
  type: string
  inputBinding:
    prefix: --input_database_transcripts
- id: overlap_read
  doc: The minimum length of the overlapping region between the read the exon-exon
    juntion. Length_of_the_exon- exon_juntion = 2 * (length_reads - overlap_read).
    The joint point is at the middle point of the exon-exon junction. Default value
    is 15.
  type: string
  inputBinding:
    prefix: --overlap_read
- id: length_reads_filename
  doc: A text file containing on the first line the length of the reads.
  type: long
  inputBinding:
    prefix: --length_reads_filename
- id: length_reads
  doc: The length of the reads.
  type: long
  inputBinding:
    prefix: --length_reads
- id: unique_cut_sequences
  doc: It outputs only the unique cut sequences (of exon-exon junctions). Default
    value is False. This is a dangerous option and it is highly recommended to be
    set on false always.!
  type: boolean
  inputBinding:
    prefix: --unique_cut_sequences
- id: unique_cut_sequences_same_pair
  doc: It outputs only the unique cut sequences (of exon-exon junctions) within the
    given pair of genes. Default value is False.
  type: boolean
  inputBinding:
    prefix: --unique_cut_sequences_same_pair
- id: output_cut_junction
  doc: A FASTA file containing the exon-exon junctions where the cutting is done according
    to the options '-- overlap_read' and '--length_reads'.
  type: string
  inputBinding:
    prefix: --output_cut_junction
- id: output_full_junction
  doc: A FASTA file containing the exon-exon junctions where the cutting is not done.
  type: string
  inputBinding:
    prefix: --output_full_junction
- id: output_unique_cut_sequences_same_pair
  doc: In case the option '--unique_cut_sequences_same_pair' is used it outputs in
    a file all the names of the sequences for which the sequences are the same.
  type: string
  inputBinding:
    prefix: --output_unique_cut_sequences_same_pair
- id: output_count_seq
  doc: If used then the number of sequences from the output FASTA file (i.e. --output_cut_junction)
    will be reported.
  type: string
  inputBinding:
    prefix: --output_count_seq
- id: output_count_nuc
  doc: If used then the number of nucleotides of all sequences from the output FASTA
    file (i.e. --output_cut_junction) will be reported.
  type: string
  inputBinding:
    prefix: --output_count_nuc
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_exon-exon_junctions.py
