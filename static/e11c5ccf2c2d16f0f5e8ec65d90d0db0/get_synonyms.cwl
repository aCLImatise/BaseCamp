class: CommandLineTool
id: get_synonyms.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the chromosomes are downloaded, e.g. homo_sapiens,
    mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the chromosomes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server_path
  doc: The path of Ensembl server from where the data is downloaded. Default is '/pub/current_mysql/'.
  type: string
  inputBinding:
    prefix: --server-path
- id: server
  doc: The Ensembl server from where the chromosomes are downloaded. Default is 'ftp.ensembl.org'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_synonyms.py
