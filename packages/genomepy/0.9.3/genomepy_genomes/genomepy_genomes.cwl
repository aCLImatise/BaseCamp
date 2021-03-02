class: CommandLineTool
id: genomepy_genomes.cwl
inputs:
- id: in_provider
  doc: provider
  type: string?
  inputBinding:
    prefix: --provider
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomepy:0.9.3--py_0
cwlVersion: v1.1
baseCommand:
- genomepy
- genomes
