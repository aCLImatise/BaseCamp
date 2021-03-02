class: CommandLineTool
id: phylip.cwl
inputs:
- id: in_not_exist_phylip
  doc: not exist in Phylip
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phylip
