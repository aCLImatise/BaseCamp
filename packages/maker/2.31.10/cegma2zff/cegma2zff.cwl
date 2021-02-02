class: CommandLineTool
id: cegma2zff.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ce_gma_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_snap
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_training_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_12
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 6
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_ce_gma
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_always
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_genome_dot_ann
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_z_ff
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cegma2zff
