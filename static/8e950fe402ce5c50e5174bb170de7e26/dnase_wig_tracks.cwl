class: CommandLineTool
id: ../../../dnase_wig_tracks.py_rev_output.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: dnase_wig_tracks_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: regions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fw_output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: rev_output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_wig_tracks.py
- rev_output
