class: CommandLineTool
id: bl_fastq2fasta.cwl
inputs:
- id: i
  doc: specify multiple FASTQ input files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify multiple (corresponding) FASTA output files
  type: boolean
  inputBinding:
    prefix: -o
- id: q
  doc: specify multiple (corresponding) QUAL output files
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: 'print ASCII quality scores (default: numerical scores)'
  type: boolean
  inputBinding:
    prefix: -a
- id: t
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: reformat the ID line by replacing everything after a space, tab or / with with
    the specified SUFFIX
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-fastq2fasta
