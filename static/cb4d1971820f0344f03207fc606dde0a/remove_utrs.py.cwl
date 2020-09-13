class: CommandLineTool
id: ../../../remove_utrs.py.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_utrs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_gff_slash_gtf_dot
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- remove_utrs.py
