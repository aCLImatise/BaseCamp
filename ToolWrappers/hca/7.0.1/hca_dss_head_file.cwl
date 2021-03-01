class: CommandLineTool
id: hca_dss_head_file.cwl
inputs:
- id: in_uuid
  doc: A RFC4122-compliant ID for the file.
  type: File?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string?
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- head-file
