class: CommandLineTool
id: quasitools_consensus_OPTIONS_REFERENCE.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- consensus
- OPTIONS
- REFERENCE
