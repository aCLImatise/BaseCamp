class: CommandLineTool
id: rsem_generate_data_matrix.cwl
inputs:
- id: in_sample_a_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alleles_slash_genes_slash_isoforms
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-generate-data-matrix
