class: CommandLineTool
id: ../../../lofreq_checkref.cwl
inputs:
- id: ref_dot_fa
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
- lofreq
- checkref
