class: CommandLineTool
id: synapse_get_annotations.cwl
inputs:
- id: in_id
  doc: Synapse ID of entity whose annotations we are
  type: long?
  inputBinding:
    prefix: --id
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- get-annotations
