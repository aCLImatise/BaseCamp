class: CommandLineTool
id: get_exons_positions.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the exons positions are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the exons positions are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: threshold_length
  doc: Genes shorter than this will be skipped and they will not be in the output.
    Default is '150'.
  type: string
  inputBinding:
    prefix: --threshold_length
- id: server
  doc: The Ensembl server from where the exons positions are downloaded, e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_exons_positions.py
