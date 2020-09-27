class: CommandLineTool
id: gsutil_hash.cwl
inputs:
- id: in_calculate_crcc_hash
  doc: Calculate a CRC32c hash for the file.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_calculate_md_hash
  doc: Calculate a MD5 hash for the file.
  type: boolean
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- hash
