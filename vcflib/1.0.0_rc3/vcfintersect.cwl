#!/usr/bin/env cwl-runner

baseCommand:
- vcfintersect
class: CommandLineTool
cwlVersion: v1.0
id: vcfintersect
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG in the current
    file.
  id: merge_to
  inputBinding:
    prefix: --merge-to
  type: boolean
