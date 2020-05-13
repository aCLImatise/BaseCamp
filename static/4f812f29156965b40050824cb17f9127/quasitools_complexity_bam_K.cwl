class: CommandLineTool
id: quasitools_complexity_bam_K.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_location
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_location
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- bam
- K
