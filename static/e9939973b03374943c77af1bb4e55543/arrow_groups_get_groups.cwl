class: CommandLineTool
id: arrow_groups_get_groups.cwl
inputs:
- id: in_name
  doc: Only return group(s) with given name
  type: string?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- get_groups
