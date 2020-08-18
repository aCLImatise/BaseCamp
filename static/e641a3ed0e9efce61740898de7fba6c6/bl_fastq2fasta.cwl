class: CommandLineTool
id: ../../../bl_fastq2fasta.cwl
inputs:
- id: specify_multiple_fastq_files
  doc: specify multiple FASTQ input files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_multiple_corresponding_fasta_files
  doc: specify multiple (corresponding) FASTA output files
  type: boolean
  inputBinding:
    prefix: -o
- id: specify_multiple_corresponding_output_files
  doc: specify multiple (corresponding) QUAL output files
  type: boolean
  inputBinding:
    prefix: -q
- id: print_ascii_scores
  doc: 'print ASCII quality scores (default: numerical scores)'
  type: boolean
  inputBinding:
    prefix: -a
- id: use_offset_converting
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean
  inputBinding:
    prefix: -t
- id: reformat_id_line
  doc: reformat the ID line by replacing everything after a space, tab or / with with
    the specified SUFFIX
  type: boolean
  inputBinding:
    prefix: -s
- id: fast_q_two_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-fastq2fasta
