class: CommandLineTool
id: oligoscreen_smp.cwl
inputs:
- id: oligo_screen
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: report_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- oligoscreen-smp
