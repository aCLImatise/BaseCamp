class: CommandLineTool
id: get_rrna.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the rRNA sequences are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the rRNA sequences are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The Ensembl server from where the rRNA sequences are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_rrna.py
