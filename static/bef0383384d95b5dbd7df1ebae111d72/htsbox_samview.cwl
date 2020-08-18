class: CommandLineTool
id: ../../../htsbox_samview.cwl
inputs:
- id: bs_ipo
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bSIpO
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -L
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: sam_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- samview
