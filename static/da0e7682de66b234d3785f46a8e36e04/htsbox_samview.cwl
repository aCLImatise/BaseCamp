class: CommandLineTool
id: htsbox_samview.cwl
inputs:
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_var_1
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    prefix: -L
- id: in_bs_ipo
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -bSIpO
- id: in_sam_view
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
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- samview
