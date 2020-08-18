class: CommandLineTool
id: ../../../bl_pair_reads.cwl
inputs:
- id: specify_fastq_files
  doc: specify multiple input FASTQ files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_basename_output
  doc: specify the BASENAME for the output files
  type: boolean
  inputBinding:
    prefix: -o
- id: use_sep_separator
  doc: use SEP as the separator in the ID line that precedes the pair number [default
    ' ', for Casava 1.8 headers]
  type: boolean
  inputBinding:
    prefix: -s
- id: pair_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-pair-reads
