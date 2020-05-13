class: CommandLineTool
id: TdrMappingScripts.pl_reference_trna.fa.cwl
inputs:
- id: sample_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- TdrMappingScripts.pl
- reference_trna.fa
