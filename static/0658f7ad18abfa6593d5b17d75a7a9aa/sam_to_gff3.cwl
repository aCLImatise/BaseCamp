class: CommandLineTool
id: ../../../sam_to_gff3.py.cwl
inputs:
- id: input_fast_a
  doc: (Optional) input fasta. If given, coverage will be calculated.
  type: string
  inputBinding:
    prefix: --input_fasta
- id: source
  doc: 'source name (ex: hg38, mm10)'
  type: string
  inputBinding:
    prefix: --source
- id: convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gff_three
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: using
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: bc_bio
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: gff
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_to_gff3.py
