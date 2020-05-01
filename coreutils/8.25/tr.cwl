#!/usr/bin/env cwl-runner

baseCommand:
- tr
class: CommandLineTool
cwlVersion: v1.0
id: tr
inputs:
- doc: use the complement of SET1
  id: complement
  inputBinding:
    prefix: --complement
  type: boolean
- doc: delete characters in SET1, do not translate
  id: delete
  inputBinding:
    prefix: --delete
  type: boolean
- doc: replace each sequence of a repeated character that is listed in the last specified
    SET, with a single occurrence of that character
  id: squeeze_repeats
  inputBinding:
    prefix: --squeeze-repeats
  type: boolean
- doc: first truncate SET1 to length of SET2
  id: truncate_set1
  inputBinding:
    prefix: --truncate-set1
  type: boolean
