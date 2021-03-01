class: CommandLineTool
id: bam_add_tags.cwl
inputs:
- id: in_tx_two_gx
  doc: ''
  type: File?
  inputBinding:
    prefix: --tx2gx
- id: in_tx
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --tx
- id: in_out_bam
  doc: ''
  type: string?
  inputBinding:
    prefix: --outbam
- id: in_in_bam
  doc: ''
  type: string?
  inputBinding:
    prefix: --inbam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam_add_tags
