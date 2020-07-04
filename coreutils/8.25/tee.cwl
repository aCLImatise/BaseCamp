class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tee.cwl
inputs:
- id: append
  doc: to the given FILEs, do not overwrite
  type: string
  inputBinding:
    prefix: --append
- id: ignore_interrupts
  doc: interrupt signals
  type: string
  inputBinding:
    prefix: --ignore-interrupts
- id: diagnose_errors_writing
  doc: diagnose errors writing to non pipes
  type: boolean
  inputBinding:
    prefix: -p
- id: output_error
  doc: '[=MODE]   set behavior on write error.  See MODE below'
  type: boolean
  inputBinding:
    prefix: --output-error
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tee
