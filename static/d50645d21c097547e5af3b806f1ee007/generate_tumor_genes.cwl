class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generate_tumor_genes.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the list of genes is generated, e.g. homo_sapiens,
    mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the list of genes is generated. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_tumor-genes.py
