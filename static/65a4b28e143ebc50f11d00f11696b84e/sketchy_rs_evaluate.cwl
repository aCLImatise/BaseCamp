class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sketchy_rs_evaluate.cwl
inputs:
- id: features
  doc: genotype feature index
  type: File
  inputBinding:
    prefix: --features
- id: stable
  doc: reads to stable breakpoint
  type: long
  inputBinding:
    prefix: --stable
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy-rs
- evaluate
