class: CommandLineTool
id: maf_chunk.py.cwl
inputs:
- id: in_prob
  doc: Probability of writing a given chunk
  type: string
  inputBinding:
    prefix: --prob
- id: in_chunk_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_chunk.py
