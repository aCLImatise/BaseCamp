class: CommandLineTool
id: fasta2esd.cwl
inputs:
- id: alphabet
  doc: '[unknown] '
  type: boolean
  inputBinding:
    prefix: --alphabet
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2esd
