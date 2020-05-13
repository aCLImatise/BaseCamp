class: CommandLineTool
id: gapcleaner.cwl
inputs:
- id: multi_fasta_or_stockholm_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gapcleaner
