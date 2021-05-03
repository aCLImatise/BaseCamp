class: CommandLineTool
id: metapi_sync_TASK.cwl
inputs:
- id: in_outdir
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --outdir
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    prefix: --name
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
- id: in_sync
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
  dockerPull: quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- metapi
- sync
- TASK
