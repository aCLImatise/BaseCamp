class: CommandLineTool
id: printScaff.cwl
inputs:
- id: in_l
  doc: '[-dot -page -plot -unused -phys -oo -sum] [-detail]'
  type: string?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- printScaff
