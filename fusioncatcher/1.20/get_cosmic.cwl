class: CommandLineTool
id: get_cosmic.py.cwl
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
  doc: The COSMIC server from where the known fusion genes are downloaded. Default
    is 'http://cancer.sanger.ac.uk'.
  type: string
  inputBinding:
    prefix: --server
- id: data
  doc: The input TSV.GZ file containg the data from the COSMIC database. It should
    be used when the COSMIC website cannot be reached. Default is 'none'.
  type: string
  inputBinding:
    prefix: --data
outputs: []
cwlVersion: v1.1
baseCommand:
- get_cosmic.py
