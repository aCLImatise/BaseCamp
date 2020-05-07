class: CommandLineTool
id: parallel_blat.cwl
inputs:
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: num_threads
  doc: (=8)             number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: similar
  doc: (=0.95)              similarity
  type: string
  inputBinding:
    prefix: --similar
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_blat
