class: CommandLineTool
id: get_hla.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the sequences are downloaded. Default is
    'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the chromosomes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: server
  doc: The EBI server from where the HLA sequences are downloaded. Default is 'ftp.ebi.ac.uk'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_hla.py
