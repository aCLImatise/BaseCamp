class: CommandLineTool
id: phyloseq_beta_diversity.Rmd.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- phyloseq_beta_diversity.Rmd
