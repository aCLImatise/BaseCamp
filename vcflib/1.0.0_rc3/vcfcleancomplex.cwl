#!/usr/bin/env cwl-runner

baseCommand:
- vcfcleancomplex
class: CommandLineTool
cwlVersion: v1.0
id: vcfcleancomplex
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
