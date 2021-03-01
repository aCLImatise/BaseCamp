class: CommandLineTool
id: splash_util.conversionrate_bam.cwl
inputs:
- id: in_rev
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rev
- id: in_region
  doc: ''
  type: string?
  inputBinding:
    prefix: -region
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
- id: in_splash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_util_dot_conversion_rate
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
- splash
- util.conversionrate
- bam
