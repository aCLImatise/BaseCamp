class: CommandLineTool
id: rebaler_reads.cwl
inputs:
- id: in_random
  doc: ''
  type: boolean
  inputBinding:
    prefix: --random
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_re_baler
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rebaler
- reads
