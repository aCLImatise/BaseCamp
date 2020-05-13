class: CommandLineTool
id: get_mitelman.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: url
  doc: The URL for Mitelman database dump file. Default is 'https://storage.cloud.google.com/mitelman-data-
    files/mitelman_db.zip'.
  type: string
  inputBinding:
    prefix: --url
- id: output
  doc: The output directory where the known fusion genes are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- get_mitelman.py
