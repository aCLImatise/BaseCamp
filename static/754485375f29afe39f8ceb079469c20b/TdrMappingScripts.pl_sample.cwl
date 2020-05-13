class: CommandLineTool
id: TdrMappingScripts.pl_sample.fa.cwl
inputs:
- id: reference_trna_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- TdrMappingScripts.pl
- sample.fa
