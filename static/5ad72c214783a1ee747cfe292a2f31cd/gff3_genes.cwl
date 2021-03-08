class: CommandLineTool
id: gff3_genes.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gff3_genes
