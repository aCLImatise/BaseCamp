class: CommandLineTool
id: easel_alistat_msafile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- alistat
- msafile
