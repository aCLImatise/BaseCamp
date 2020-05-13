class: CommandLineTool
id: mrsfast.cwl
inputs:
- id: treated
  doc: sequences are not supported in this version.
  type: string
  inputBinding:
    position: 0
- id: should
  doc: be  created  from  the  dbSNP  (.vcf)  file  using  the
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mrsfast
