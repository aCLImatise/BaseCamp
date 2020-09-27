class: CommandLineTool
id: bl_fasta2fastq.cwl
inputs:
- id: in_specify_multiple_fasta
  doc: specify multiple FASTA input files
  type: boolean
  inputBinding:
    prefix: -i
- id: in_specify_multiple_corresponding_input_files
  doc: specify multiple (corresponding) QUAL input files
  type: boolean
  inputBinding:
    prefix: -q
- id: in_specify_multiple_corresponding_fastq_files
  doc: specify multiple (corresponding) FASTQ output files
  type: boolean
  inputBinding:
    prefix: -o
- id: in_scores_qual_file
  doc: 'scores in QUAL file are ASCII (default: numerical scores)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_use_offset_converting
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_fast_a_two_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bl-fasta2fastq
