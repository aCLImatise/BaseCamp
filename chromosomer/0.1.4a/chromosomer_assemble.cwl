class: CommandLineTool
id: ../../../chromosomer_assemble.cwl
inputs:
- id: in_save_soft_mask
  doc: "keep soft masking from the original fragment sequences\n(default: False)\n"
  type: boolean
  inputBinding:
    prefix: --save_soft_mask
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
