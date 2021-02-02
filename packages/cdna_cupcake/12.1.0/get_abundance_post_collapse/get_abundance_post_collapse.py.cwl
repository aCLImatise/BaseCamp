class: CommandLineTool
id: get_abundance_post_collapse.py.cwl
inputs:
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_abundance_slash_read
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stat
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_after
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_running
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_collapse
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_script_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_works
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_iso_seq_one
  doc: ''
  type: long
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_abundance_post_collapse.py
