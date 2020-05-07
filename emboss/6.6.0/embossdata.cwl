class: CommandLineTool
id: embossdata.cwl
inputs:
- id: show_all
  doc: toggle     Show all potential EMBOSS data files
  type: boolean
  inputBinding:
    prefix: -showall
outputs: []
cwlVersion: v1.1
baseCommand:
- embossdata
