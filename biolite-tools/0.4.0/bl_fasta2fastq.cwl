class: CommandLineTool
id: bl_fasta2fastq.cwl
inputs:
- id: i
  doc: specify multiple FASTA input files
  type: boolean
  inputBinding:
    prefix: -i
- id: q
  doc: specify multiple (corresponding) QUAL input files
  type: boolean
  inputBinding:
    prefix: -q
- id: o
  doc: specify multiple (corresponding) FASTQ output files
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: 'scores in QUAL file are ASCII (default: numerical scores)'
  type: boolean
  inputBinding:
    prefix: -a
- id: t
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-fasta2fastq
