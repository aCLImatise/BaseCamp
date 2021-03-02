class: CommandLineTool
id: terminator.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: mandatory path to the gkpStore
  type: File?
  inputBinding:
    prefix: -g
- id: in_version_mandatory_path
  doc: version     mandatory path to the tigStore and version
  type: File?
  inputBinding:
    prefix: -t
- id: in_version_optional_path
  doc: version   optional path to a checkpoint and version
  type: File?
  inputBinding:
    prefix: -c
- id: in_write_output_here
  doc: write the output here
  type: string?
  inputBinding:
    prefix: -o
- id: in_use_real_uids
  doc: don't use real UIDs, but start counting from here
  type: string?
  inputBinding:
    prefix: -s
- id: in_use_uid_namespace
  doc: use this UID namespace
  type: string?
  inputBinding:
    prefix: -n
- id: in_use_uid_server
  doc: use this UID server
  type: string?
  inputBinding:
    prefix: -E
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- terminator
