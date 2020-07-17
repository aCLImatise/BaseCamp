class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bl_fasta2fastq.cwl
inputs:
- id: specify_fasta_files
  doc: specify multiple FASTA input files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_multiple_corresponding_qual_files
  doc: specify multiple (corresponding) QUAL input files
  type: boolean
  inputBinding:
    prefix: -q
- id: specify_multiple_corresponding_fastq_files
  doc: specify multiple (corresponding) FASTQ output files
  type: boolean
  inputBinding:
    prefix: -o
- id: scores_qual_file
  doc: 'scores in QUAL file are ASCII (default: numerical scores)'
  type: boolean
  inputBinding:
    prefix: -a
- id: use_offset_converting
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean
  inputBinding:
    prefix: -t
- id: fast_a_two_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-fasta2fastq
