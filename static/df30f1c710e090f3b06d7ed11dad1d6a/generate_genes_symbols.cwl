class: CommandLineTool
id: generate_genes_symbols.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the genes positions are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the genes positions are stored. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_genes_symbols.py
