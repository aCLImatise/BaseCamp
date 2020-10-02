class: CommandLineTool
id: seurat_get_random_genes.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seurat-get-random-genes.R
