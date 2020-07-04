class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sha256sum.cwl
inputs:
- id: binary
  doc: read in binary mode
  type: boolean
  inputBinding:
    prefix: --binary
- id: check
  doc: read SHA256 sums from the FILEs and check them
  type: boolean
  inputBinding:
    prefix: --check
- id: tag
  doc: create a BSD-style checksum
  type: boolean
  inputBinding:
    prefix: --tag
- id: text
  doc: read in text mode (default)
  type: boolean
  inputBinding:
    prefix: --text
- id: ignore_missing
  doc: don't fail or report status for missing files
  type: boolean
  inputBinding:
    prefix: --ignore-missing
- id: quiet
  doc: don't print OK for each successfully verified file
  type: boolean
  inputBinding:
    prefix: --quiet
- id: status
  doc: don't output anything, status code shows success
  type: boolean
  inputBinding:
    prefix: --status
- id: strict
  doc: exit non-zero for improperly formatted checksum lines
  type: boolean
  inputBinding:
    prefix: --strict
- id: warn
  doc: warn about improperly formatted checksum lines
  type: boolean
  inputBinding:
    prefix: --warn
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sha256sum
