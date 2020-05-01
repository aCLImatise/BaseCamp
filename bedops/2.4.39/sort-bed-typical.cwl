#!/usr/bin/env cwl-runner

baseCommand:
- sort-bed-typical
class: CommandLineTool
cwlVersion: v1.0
id: sort-bed-typical
inputs:
- doc: useful only with --max-mem.
  id: tmpdir
  inputBinding:
    prefix: --tmpdir
  type: string
- doc: be used to print only unique BED elements (similar to 'sort -u'). Cannot be
    used with --duplicates.
  id: unique
  inputBinding:
    prefix: --unique
  type: string
- doc: be used to print only duplicated or repeated elements (similar to 'uniq -d').
    Cannot be used with --unique.
  id: duplicates
  inputBinding:
    prefix: --duplicates
  type: string
