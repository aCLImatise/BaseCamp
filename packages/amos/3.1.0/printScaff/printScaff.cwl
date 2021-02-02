class: CommandLineTool
id: printScaff.cwl
inputs:
- id: in_l
  doc: '[-dot -page -plot -unused -phys -oo -sum] [-detail]'
  type: string
  inputBinding:
    prefix: -l
- id: in_f
  doc: '[-[no]merge] [-arachne <araprefix>]'
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- printScaff
