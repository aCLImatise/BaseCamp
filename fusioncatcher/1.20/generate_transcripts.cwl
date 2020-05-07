class: CommandLineTool
id: generate_transcripts.py.cwl
inputs:
- id: input_fast_a_exons
  doc: A FASTA file containing all the exon sequences (e.g. 'exons.fa').
  type: string
  inputBinding:
    prefix: --input_fasta_exons
- id: input_database
  doc: A text file containg all the information regarding exons, genes, proteins and
    their positions (e.g. 'exons.txt')
  type: string
  inputBinding:
    prefix: --input_database
- id: skip
  doc: A text file containg all the (Ensembl) genes ids which should be skipped (i.e.
    not added to the output), e.g. miRNA genes.
  type: string
  inputBinding:
    prefix: --skip
- id: threshold_length
  doc: Transcripts shorter than this will be skipped and their sequences will not
    be in the output. Default is '150'.
  type: string
  inputBinding:
    prefix: --threshold_length
- id: output_fast_a
  doc: The output file containing all the assembled transcripts in FASTA format.
  type: string
  inputBinding:
    prefix: --output_fasta
- id: output_extra
  doc: Extra information about transcripts.
  type: string
  inputBinding:
    prefix: --output_extra
- id: output
  doc: The output directory where the assembled transcripts are written. Default is
    '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_transcripts.py
