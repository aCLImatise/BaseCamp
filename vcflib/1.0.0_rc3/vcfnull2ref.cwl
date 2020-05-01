#!/usr/bin/env cwl-runner

baseCommand:
- vcfnull2ref
class: CommandLineTool
cwlVersion: v1.0
id: vcfnull2ref
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
