class: CommandLineTool
id: genomepy_search.cwl
inputs:
- id: in_provider
  doc: provider
  type: string?
  inputBinding:
    prefix: --provider
- id: in_term
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- search
