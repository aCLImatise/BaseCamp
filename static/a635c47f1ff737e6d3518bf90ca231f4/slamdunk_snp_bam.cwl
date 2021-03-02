class: CommandLineTool
id: slamdunk_snp_bam.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_slam_dunk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snp
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
- slamdunk
- snp
- bam
