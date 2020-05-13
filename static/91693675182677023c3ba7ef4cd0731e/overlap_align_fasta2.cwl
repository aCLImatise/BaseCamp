class: CommandLineTool
id: overlap_align_fasta2.cwl
inputs:
- id: fasta1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fasta2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap-align
- fasta2
