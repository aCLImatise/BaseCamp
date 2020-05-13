class: CommandLineTool
id: nextflow.bak_view.cwl
inputs:
- id: l
  doc: 'List repository content Default: false'
  type: boolean
  inputBinding:
    prefix: -l
- id: q
  doc: 'Hide header line Default: false'
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- view
