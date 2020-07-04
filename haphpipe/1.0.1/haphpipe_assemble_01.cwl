class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/haphpipe_assemble_01.cwl
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
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: reference_gtf
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: samp_id
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- haphpipe_assemble_01
