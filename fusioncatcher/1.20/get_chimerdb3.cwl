class: CommandLineTool
id: get_chimerdb3.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the known fusion genes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The ChimerDB 3.0 server from where the known fusion genes are downloaded. Default
    is 'http://203.255.191.229:8080'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_chimerdb3.py
