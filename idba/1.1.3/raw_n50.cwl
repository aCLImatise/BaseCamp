class: CommandLineTool
id: raw_n50.cwl
inputs:
- id: contigs_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min_contig
  doc: '(=100)            '
  type: string
  inputBinding:
    prefix: --min_contig
- id: ref_length
  doc: '(=0)              '
  type: string
  inputBinding:
    prefix: --ref_length
outputs: []
cwlVersion: v1.1
baseCommand:
- raw_n50
