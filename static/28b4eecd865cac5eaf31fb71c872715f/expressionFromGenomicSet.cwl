class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/expressionFromGenomicSet.py.cwl
inputs:
- id: dist
  doc: 'threshDist of GenomicReginSet.filter_by_gene_association_old. [default: 50000]'
  type: string
  inputBinding:
    prefix: --dist
- id: experimental_matrix_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_expression_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotation_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- expressionFromGenomicSet.py
