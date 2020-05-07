class: CommandLineTool
id: psass_pileup_ALIGNMENT_FILES....cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- psass
- pileup
- ALIGNMENT_FILES...
