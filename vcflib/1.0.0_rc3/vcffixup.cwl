#!/usr/bin/env cwl-runner

baseCommand:
- vcffixup
class: CommandLineTool
cwlVersion: v1.0
id: vcffixup
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
