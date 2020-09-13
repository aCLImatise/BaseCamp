class: CommandLineTool
id: ../../../clean_pairs_memory.py.cwl
inputs:
- id: in_fq_one
  doc: ''
  type: long
  inputBinding:
    prefix: --fq1
- id: in_fq_two
  doc: ''
  type: long
  inputBinding:
    prefix: --fq2
- id: in_repeat
  doc: ''
  type: string
  inputBinding:
    prefix: --repeat
- id: in_fq_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --fq_dir
- id: in_seq_tk
  doc: ''
  type: string
  inputBinding:
    prefix: --seqtk
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clean_pairs_memory.py
