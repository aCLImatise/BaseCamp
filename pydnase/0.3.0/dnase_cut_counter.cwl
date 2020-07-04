class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dnase_cut_counter.py_output.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: dnase_cut_counter_do_tpy
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
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_cut_counter.py
- output
