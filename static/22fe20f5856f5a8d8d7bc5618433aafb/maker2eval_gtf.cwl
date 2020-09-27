class: CommandLineTool
id: maker2eval_gtf.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_evaluating
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maker_two_eval
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_program_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_eval
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_maker
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_gtf
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_formated
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
- maker2eval_gtf
