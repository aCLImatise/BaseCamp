class: CommandLineTool
id: get_cgp.py.cwl
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
- id: tsv1
  doc: The input TSV file containg the data from the CGP database, e.g. cancer_gene_census.tsv.
  type: string
  inputBinding:
    prefix: --tsv1
- id: tsv2
  doc: The input TSV file containg the data from the CGP database.
  type: string
  inputBinding:
    prefix: --tsv2
- id: server
  doc: The CGP server from where the known fusion genes are downloaded. Default is
    'http://cancer.sanger.ac.uk'.
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- get_cgp.py
