class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_generate_data_matrix.cwl
inputs:
- id: sample_a_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alleles_slash_genes_slash_isoforms
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-generate-data-matrix
