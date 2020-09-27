class: CommandLineTool
id: fermi2.pl_utglog.cwl
inputs:
- id: in_prefix
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
- fermi2.pl
- utglog
