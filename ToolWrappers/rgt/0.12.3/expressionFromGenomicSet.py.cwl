class: CommandLineTool
id: expressionFromGenomicSet.py.cwl
inputs:
- id: in_dist
  doc: "threshDist of GenomicReginSet.filter_by_gene_association_old.\n[default: 50000]\n"
  type: long?
  inputBinding:
    prefix: --dist
- id: in_experimental_matrix_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_gene_expression_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_annotation_path
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- expressionFromGenomicSet.py
