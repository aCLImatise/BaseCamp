class: CommandLineTool
id: ../../../nextflow.bak_view.cwl
inputs:
- id: list_repository_content
  doc: 'List repository content Default: false'
  type: boolean
  inputBinding:
    prefix: -l
- id: hide_header_line
  doc: 'Hide header line Default: false'
  type: boolean
  inputBinding:
    prefix: -q
- id: view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- view
