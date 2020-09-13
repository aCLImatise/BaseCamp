class: CommandLineTool
id: ../../../convert_cdna_match_gff3.py.cwl
inputs:
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
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_cdna_match
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_exonerate
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_either
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_match_slash_match_part
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_gtf
  doc: ''
  type: string
  inputBinding:
    position: 14
- id: in_file_dot
  doc: ''
  type: File
  inputBinding:
    position: 15
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_cdna_match_gff3.py
