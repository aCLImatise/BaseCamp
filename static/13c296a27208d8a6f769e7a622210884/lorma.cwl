class: CommandLineTool
id: lorma.sh.cwl
inputs:
- id: s
  doc: the sequence data of intermediate LoRDEC steps
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: LoRDEC steps
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- lorma.sh
