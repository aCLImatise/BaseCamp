class: CommandLineTool
id: parallel_rna_blat.cwl
inputs:
- id: in_num_threads
  doc: (=8)             number of threads
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_similar
  doc: (=0.95)              similarity
  type: double?
  inputBinding:
    prefix: --similar
- id: in_parallel_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- parallel_rna_blat
