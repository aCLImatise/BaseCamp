#!/usr/bin/env cwl-runner

baseCommand:
- generate_transcripts.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_transcripts.py
inputs:
- doc: A FASTA file containing all the exon sequences (e.g. 'exons.fa').
  id: input_fast_a_exons
  inputBinding:
    prefix: --input_fasta_exons
  type: string
- doc: A text file containg all the information regarding exons, genes, proteins and
    their positions (e.g. 'exons.txt')
  id: input_database
  inputBinding:
    prefix: --input_database
  type: string
- doc: A text file containg all the (Ensembl) genes ids which should be skipped (i.e.
    not added to the output), e.g. miRNA genes.
  id: skip
  inputBinding:
    prefix: --skip
  type: string
- doc: Transcripts shorter than this will be skipped and their sequences will not
    be in the output. Default is '150'.
  id: threshold_length
  inputBinding:
    prefix: --threshold_length
  type: string
- doc: The output file containing all the assembled transcripts in FASTA format.
  id: output_fast_a
  inputBinding:
    prefix: --output_fasta
  type: string
- doc: Extra information about transcripts.
  id: output_extra
  inputBinding:
    prefix: --output_extra
  type: string
- doc: The output directory where the assembled transcripts are written. Default is
    '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
