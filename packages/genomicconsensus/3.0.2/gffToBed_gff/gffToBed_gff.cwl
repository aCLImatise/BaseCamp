class: CommandLineTool
id: gffToBed_gff.cwl
inputs:
- id: in_emit_tool_contract
  doc: ''
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: in_gff_to_bed
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
- gffToBed
- gff
