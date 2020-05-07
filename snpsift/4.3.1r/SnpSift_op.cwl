class: CommandLineTool
id: SnpSift_op.cwl
inputs:
- id: kew
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_pop_freq
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: fields
  doc: ': Input VCF field names (comma separated list).'
  type: File
  inputBinding:
    prefix: -fields
- id: op
  doc: ': Operator to be applied to the fields'
  type: string
  inputBinding:
    prefix: -op
- id: outfield
  doc: ': Ouptut field name.'
  type: File
  inputBinding:
    prefix: -outfield
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- op
