class: CommandLineTool
id: clumpify.sh.cwl
inputs:
- id: nova_seq
  doc: '12000'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clumpify.sh
