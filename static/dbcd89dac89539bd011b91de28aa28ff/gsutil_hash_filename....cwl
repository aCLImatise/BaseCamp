class: CommandLineTool
id: gsutil_hash_filename....cwl
inputs:
- id: c
  doc: Calculate a CRC32c hash for the file.
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: Calculate a MD5 hash for the file.
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- hash
- filename...
