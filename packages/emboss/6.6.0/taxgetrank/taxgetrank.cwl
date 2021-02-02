class: CommandLineTool
id: taxgetrank.cwl
inputs:
- id: in_hidden
  doc: boolean    [N] Show taxons hidden in GenBank
  type: boolean
  inputBinding:
    prefix: -hidden
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxgetrank
