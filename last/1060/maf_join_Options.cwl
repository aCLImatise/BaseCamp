class: CommandLineTool
id: maf_join_Options.cwl
inputs:
- id: sorted_file_1maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-join
- Options
