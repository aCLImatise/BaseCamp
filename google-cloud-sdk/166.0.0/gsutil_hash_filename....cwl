class: CommandLineTool
id: ../../../gsutil_hash_filename....cwl
inputs:
- id: calculate_crcc_hash
  doc: Calculate a CRC32c hash for the file.
  type: boolean
  inputBinding:
    prefix: -c
- id: calculate_md_hash
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
