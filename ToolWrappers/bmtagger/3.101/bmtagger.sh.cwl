class: CommandLineTool
id: bmtagger.sh.cwl
inputs:
- id: in_hv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hV
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bmtagger.sh
