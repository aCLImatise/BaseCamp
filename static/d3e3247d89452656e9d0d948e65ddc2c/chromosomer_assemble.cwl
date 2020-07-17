class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_assemble.cwl
inputs:
- id: save_soft_mask
  doc: 'keep soft masking from the original fragment sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_soft_mask
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
