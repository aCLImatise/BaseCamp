class: CommandLineTool
id: bl_pair_reads.cwl
inputs:
- id: i
  doc: specify multiple input FASTQ files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify the BASENAME for the output files
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: use SEP as the separator in the ID line that precedes the pair number [default
    ' ', for Casava 1.8 headers]
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-pair-reads
