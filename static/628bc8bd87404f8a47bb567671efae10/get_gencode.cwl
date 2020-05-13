class: CommandLineTool
id: get_gencode.py.cwl
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
- id: server
  doc: The Gencode server from where the gene annotations are downloaded. Default
    is 'ftp.ebi.ac.uk'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_gencode.py
