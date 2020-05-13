class: CommandLineTool
id: get_ucsc.py.cwl
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
  doc: The UCSC server from where the gene annotations are downloaded. Default is
    'hgdownload.cse.ucsc.edu'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_ucsc.py
