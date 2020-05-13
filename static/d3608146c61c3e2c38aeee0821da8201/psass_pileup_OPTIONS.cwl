class: CommandLineTool
id: psass_pileup_OPTIONS.cwl
inputs:
- id: alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- psass
- pileup
- OPTIONS
