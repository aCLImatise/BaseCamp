#!/usr/bin/env cwl-runner

baseCommand:
- sha224sum
class: CommandLineTool
cwlVersion: v1.0
id: sha224sum
inputs:
- doc: read in binary mode
  id: binary
  inputBinding:
    prefix: --binary
  type: boolean
- doc: read SHA224 sums from the FILEs and check them
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: create a BSD-style checksum
  id: tag
  inputBinding:
    prefix: --tag
  type: boolean
- doc: read in text mode (default)
  id: text
  inputBinding:
    prefix: --text
  type: boolean
- doc: don't fail or report status for missing files
  id: ignore_missing
  inputBinding:
    prefix: --ignore-missing
  type: boolean
- doc: don't print OK for each successfully verified file
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: don't output anything, status code shows success
  id: status
  inputBinding:
    prefix: --status
  type: boolean
- doc: exit non-zero for improperly formatted checksum lines
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: warn about improperly formatted checksum lines
  id: warn
  inputBinding:
    prefix: --warn
  type: boolean
