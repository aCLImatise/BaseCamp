class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/callvariants2.sh.cwl
inputs:
- id: call_variants_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- callvariants2.sh
