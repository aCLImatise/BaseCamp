class: CommandLineTool
id: parsec_datatypes_get_datatypes.cwl
inputs:
- id: in_extension_only
  doc: Return only the extension rather than the datatype name
  type: boolean?
  inputBinding:
    prefix: --extension_only
- id: in_upload_only
  doc: Whether to return only datatypes which can be uploaded
  type: boolean?
  inputBinding:
    prefix: --upload_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- datatypes
- get_datatypes
