class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maf_chunk.py.cwl
inputs:
- id: prob
  doc: Probability of writing a given chunk
  type: string
  inputBinding:
    prefix: --prob
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
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_chunk.py
