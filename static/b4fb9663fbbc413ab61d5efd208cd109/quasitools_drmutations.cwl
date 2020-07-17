class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quasitools_drmutations.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: variants
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bed_four_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- drmutations
