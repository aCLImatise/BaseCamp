class: CommandLineTool
id: htsbox_samsort.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -S
- id: in_sam_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
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
- htsbox
- samsort
