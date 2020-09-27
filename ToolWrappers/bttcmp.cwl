class: CommandLineTool
id: bttcmp.cwl
inputs:
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_three
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_four
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_five
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_six
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_seven
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_main
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_follows
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bttcmp
