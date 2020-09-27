class: CommandLineTool
id: pvacseq_binding_filter_output_file.cwl
inputs:
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_pvac_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_binding_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvacseq
- binding_filter
- output_file
