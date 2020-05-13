class: CommandLineTool
id: pubmlst_list.cwl
inputs:
- id: pattern
  doc: regex pattern to filter scheme names
  type: string
  inputBinding:
    prefix: --pattern
- id: exclude_pattern
  doc: regex pattern to filter scheme names
  type: string
  inputBinding:
    prefix: --exclude_pattern
- id: names_only
  doc: Only show scheme names
  type: boolean
  inputBinding:
    prefix: --names_only
outputs: []
cwlVersion: v1.1
baseCommand:
- pubmlst_list
