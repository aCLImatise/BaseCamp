class: CommandLineTool
id: quasitools_complexity_bam_OPTIONS_BAM_LOCATION.cwl
inputs:
- id: reference_location
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_location
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- bam
- OPTIONS
- BAM_LOCATION
