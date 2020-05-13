class: CommandLineTool
id: quasitools_consensus_BAM.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- consensus
- BAM
