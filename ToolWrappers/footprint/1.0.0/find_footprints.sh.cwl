class: CommandLineTool
id: find_footprints.sh.cwl
inputs:
- id: in_fixed_bg
  doc: 'The arguments are explained below:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find_footprints.sh
