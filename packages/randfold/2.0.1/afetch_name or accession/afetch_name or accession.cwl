class: CommandLineTool
id: afetch_name or accession.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_a_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment_database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name_or_accession
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- afetch
- name or accession
