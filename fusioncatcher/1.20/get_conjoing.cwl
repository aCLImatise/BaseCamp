class: CommandLineTool
id: get_conjoing.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the known conjoined genes are downloaded,
    e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the known fusion genes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The ConjoinG server from where the known conjoined genes are downloaded. Default
    is 'http://metasystems.riken.jp'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_conjoing.py
