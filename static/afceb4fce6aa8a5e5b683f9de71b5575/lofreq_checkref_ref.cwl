class: CommandLineTool
id: lofreq_checkref_ref.fa.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- checkref
- ref.fa
