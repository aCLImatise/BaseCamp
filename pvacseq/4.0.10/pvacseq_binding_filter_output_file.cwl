class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_binding_filter_output_file.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: pvac_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: binding_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- binding_filter
- output_file
