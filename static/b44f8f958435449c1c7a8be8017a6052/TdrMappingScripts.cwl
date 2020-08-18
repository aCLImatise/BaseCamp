class: CommandLineTool
id: ../../../TdrMappingScripts.pl.cwl
inputs:
- id: reference_trna_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- TdrMappingScripts.pl
