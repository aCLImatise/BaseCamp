class: CommandLineTool
id: ../../../cwl2wdl.cwl
inputs:
- id: format
  doc: 'specify the output format (default: wdl)'
  type: string
  inputBinding:
    prefix: --format
- id: validate
  doc: 'validate the resulting WDL code with PyWDL (default: False)'
  type: boolean
  inputBinding:
    prefix: --validate
- id: file
  doc: CWL file.
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cwl2wdl
