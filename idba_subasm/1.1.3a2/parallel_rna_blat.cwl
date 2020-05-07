class: CommandLineTool
id: parallel_rna_blat.cwl
inputs:
- id: parallel_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- parallel_rna_blat
