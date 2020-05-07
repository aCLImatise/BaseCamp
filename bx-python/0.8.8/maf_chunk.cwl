class: CommandLineTool
id: maf_chunk.py.cwl
inputs:
- id: chunk_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prob
  doc: Probability of writing a given chunk
  type: string
  inputBinding:
    prefix: --prob
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_chunk.py
