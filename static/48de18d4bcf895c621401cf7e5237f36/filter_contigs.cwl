class: CommandLineTool
id: ../../../filter_contigs.cwl
inputs:
- id: min_contig
  doc: (=100)            filter out reads containing 'N'
  type: string
  inputBinding:
    prefix: --min_contig
- id: fq_two_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_contigs
