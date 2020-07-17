class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffToBed_gff.cwl
inputs:
- id: emit_tool_contract
  doc: ''
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: gff_to_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gffToBed
- gff
