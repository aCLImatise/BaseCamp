#!/usr/bin/env cwl-runner

baseCommand:
- vcf-concat
class: CommandLineTool
cwlVersion: v1.0
id: vcf-concat
inputs:
- doc: Do not concatenate, only check if the columns agree.
  id: check_columns
  inputBinding:
    prefix: --check-columns
  type: boolean
- doc: Read the list of files from a file.
  id: files
  inputBinding:
    prefix: --files
  type: File
- doc: Write '.' in place of missing columns. Useful for joining chrY with the rest.
  id: pad_missing
  inputBinding:
    prefix: --pad-missing
  type: boolean
- doc: Allow small overlaps in N consecutive files.
  id: merge_sort
  inputBinding:
    prefix: --merge-sort
  type: long
