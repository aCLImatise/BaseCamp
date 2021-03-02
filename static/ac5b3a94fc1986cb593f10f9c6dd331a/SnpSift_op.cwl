class: CommandLineTool
id: SnpSift_op.cwl
inputs:
- id: in_fields
  doc: ': Input VCF field names (comma separated list).'
  type: string?
  inputBinding:
    prefix: -fields
- id: in_op
  doc: ': Operator to be applied to the fields'
  type: string?
  inputBinding:
    prefix: -op
- id: in_outfield
  doc: ': Ouptut field name.'
  type: string?
  inputBinding:
    prefix: -outfield
- id: in_kew
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_max_pop_freq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- op
