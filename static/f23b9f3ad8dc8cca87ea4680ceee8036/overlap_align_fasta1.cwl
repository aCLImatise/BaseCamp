class: CommandLineTool
id: overlap_align_fasta1.cwl
inputs:
- id: fasta2
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap-align
- fasta1
