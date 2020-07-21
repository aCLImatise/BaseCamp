class: CommandLineTool
id: ../../../haphpipe_assemble_02.cwl
inputs:
- id: read_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: amplicons_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: samp_id
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- haphpipe_assemble_02
