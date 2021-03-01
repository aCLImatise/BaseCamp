class: CommandLineTool
id: dnase_wig_tracks.py_reads.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_dnase_wig_tracks_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fw_output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_rev_output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_wig_tracks.py
- reads
