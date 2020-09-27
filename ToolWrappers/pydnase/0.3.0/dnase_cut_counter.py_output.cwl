class: CommandLineTool
id: dnase_cut_counter.py_output.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: in_dnase_cut_counter_do_tpy
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
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dnase_cut_counter.py
- output
