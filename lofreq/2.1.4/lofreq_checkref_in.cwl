class: CommandLineTool
id: lofreq_checkref_in.bam.cwl
inputs:
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- checkref
- in.bam
