class: CommandLineTool
id: AC.cwl
inputs:
- id: r
  doc: 'reference file ("-rm" are loaded here),     '
  type: File
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- AC
