class: CommandLineTool
id: rnftools_check.cwl
inputs:
- id: in_rnf_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnftools
- check
