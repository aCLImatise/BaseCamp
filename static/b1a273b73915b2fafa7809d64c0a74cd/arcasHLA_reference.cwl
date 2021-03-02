class: CommandLineTool
id: arcasHLA_reference.cwl
inputs:
- id: in_update
  doc: update to latest IMGT/HLA version
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_rebuild
  doc: rebuild HLA database
  type: boolean?
  inputBinding:
    prefix: --rebuild
- id: in_commit
  doc: checkout IMGT/HLA version using commithash
  type: boolean?
  inputBinding:
    prefix: --commit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arcas-hla:0.2.0--0
cwlVersion: v1.1
baseCommand:
- arcasHLA
- reference
