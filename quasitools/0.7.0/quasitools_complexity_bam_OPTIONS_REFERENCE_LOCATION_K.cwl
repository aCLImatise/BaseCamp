class: CommandLineTool
id: quasitools_complexity_bam_OPTIONS_REFERENCE_LOCATION_K.cwl
inputs:
- id: bam_location
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- bam
- OPTIONS
- REFERENCE_LOCATION
- K
