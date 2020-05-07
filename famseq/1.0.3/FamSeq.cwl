class: CommandLineTool
id: FamSeq.cwl
inputs:
- id: vcf
  doc: input vcf file
  type: string
  inputBinding:
    position: 0
- id: lk
  doc: input likelihood file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- FamSeq
