class: CommandLineTool
id: printScaff.cwl
inputs:
- id: l
  doc: '[-dot -page -plot -unused -phys -oo -sum] [-detail]'
  type: string
  inputBinding:
    prefix: -l
- id: f
  doc: '[-[no]merge] [-arachne <araprefix>]'
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- printScaff
