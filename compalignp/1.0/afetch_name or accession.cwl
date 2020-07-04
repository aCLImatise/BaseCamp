class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/afetch_name or accession.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: a_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name_or_accession
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- afetch
- name or accession
