class: CommandLineTool
id: get_viruses.py.cwl
inputs:
- id: output
  doc: The output directory where the chromosomes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The NCBI server from where the viral genomes are downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_viruses.py
