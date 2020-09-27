class: CommandLineTool
id: analyse.py.cwl
inputs:
- id: in_size
  doc: "length of the sequence (mandatory for circular\nsequences)"
  type: long
  inputBinding:
    prefix: --size
- id: in_linear
  doc: treat sequence as linear
  type: boolean
  inputBinding:
    prefix: --linear
- id: in_a_type
  doc: get all features of type TYPE
  type: string
  inputBinding:
    prefix: --atype
- id: in_f_type
  doc: get all features except features of type TYPE
  type: string
  inputBinding:
    prefix: --ftype
- id: in_a_name
  doc: get all features with name NAME
  type: string
  inputBinding:
    prefix: --aname
- id: in_fname
  doc: "get all features except features with name NAME\n"
  type: string
  inputBinding:
    prefix: --fname
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyse.py
