class: CommandLineTool
id: ../../../AC.cwl
inputs:
- id: reference_file_loaded
  doc: 'reference file ("-rm" are loaded here),     '
  type: File
  inputBinding:
    prefix: -r
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- AC
