class: CommandLineTool
id: seurat_get_random_genes.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seurat-scripts:0.0.9--0
cwlVersion: v1.1
baseCommand:
- seurat-get-random-genes.R
