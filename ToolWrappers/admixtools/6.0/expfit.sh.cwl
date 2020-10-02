class: CommandLineTool
id: expfit.sh.cwl
inputs:
- id: in_par_file
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
- expfit.sh
