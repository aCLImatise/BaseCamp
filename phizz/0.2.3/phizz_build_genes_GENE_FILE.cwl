class: CommandLineTool
id: phizz_build_genes_GENE_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- phizz
- build-genes
- GENE_FILE
