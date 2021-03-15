class: CommandLineTool
id: synapse_store_table.cwl
inputs:
- id: in_name
  doc: Name of Table
  type: string?
  inputBinding:
    prefix: --name
- id: in_parentid
  doc: Synapse ID of project
  type: long?
  inputBinding:
    prefix: --parentid
- id: in_csv
  doc: Path to csv
  type: File?
  inputBinding:
    prefix: --csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- store-table
