class: CommandLineTool
id: ../../../edd_input_bam.cwl
inputs:
- id: bin_size
  doc: ''
  type: string
  inputBinding:
    prefix: --bin-size
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: fdr
  doc: ''
  type: string
  inputBinding:
    prefix: --fdr
- id: edd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- edd
- input_bam
