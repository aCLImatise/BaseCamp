class: CommandLineTool
id: kallisto_pseudo.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: quant
  doc: Quantify using EM algorithm (only in batch mode)
  type: boolean
  inputBinding:
    prefix: --quant
- id: single
  doc: Quantify single-end reads
  type: boolean
  inputBinding:
    prefix: --single
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- pseudo
