#!/usr/bin/env cwl-runner

baseCommand:
- primerclip
class: CommandLineTool
cwlVersion: v1.0
id: primerclip
inputs:
- doc: add this switch to use BEDPE coordinate input format (default format is master
    file)
  id: bed_pe
  inputBinding:
    prefix: --bedpe
  type: boolean
- doc: add this switch to trim primers from single-end alignments
  id: single_end
  inputBinding:
    prefix: --single-end
  type: boolean
