class: CommandLineTool
id: get_biotypes.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the genes biotypes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the genes biotypes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The Ensembl server from where the genes biotypes are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  type: string
  inputBinding:
    prefix: --server
- id: server_path
  doc: The path of Ensembl server from where the data is downloaded. Default is '/biomart/martservice'.
  type: string
  inputBinding:
    prefix: --server-path
outputs: []
cwlVersion: v1.1
baseCommand:
- get_biotypes.py
