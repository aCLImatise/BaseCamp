class: CommandLineTool
id: metapi_gene_wf_TASK.cwl
inputs:
- id: in_cluster
  doc: ''
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_config
  doc: ''
  type: string?
  inputBinding:
    prefix: --config
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_met_api
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gene_wf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metapi:1.0.5--py_0
cwlVersion: v1.1
baseCommand:
- metapi
- gene_wf
- TASK
