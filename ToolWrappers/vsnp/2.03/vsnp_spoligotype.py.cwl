class: CommandLineTool
id: vsnp_spoligotype.py.cwl
inputs:
- id: in_read_one
  doc: 'Required: single read'
  type: long
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: 'Optional: paired read'
  type: long
  inputBinding:
    prefix: --read2
- id: in_debug
  doc: turn off map.pooling of samples
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vsnp_spoligotype.py
