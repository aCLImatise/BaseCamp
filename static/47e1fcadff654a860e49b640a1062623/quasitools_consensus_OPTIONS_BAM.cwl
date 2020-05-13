class: CommandLineTool
id: quasitools_consensus_OPTIONS_BAM.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- consensus
- OPTIONS
- BAM
