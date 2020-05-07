class: CommandLineTool
id: get_oncokb.py.cwl
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
  doc: The GETx server (thru FusionAnnotator) from where the known fusion genes are
    downloaded. Default is 'http://github.com'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_oncokb.py
