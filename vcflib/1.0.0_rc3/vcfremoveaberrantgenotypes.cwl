#!/usr/bin/env cwl-runner

baseCommand:
- vcfremoveaberrantgenotypes
class: CommandLineTool
cwlVersion: v1.0
id: vcfremoveaberrantgenotypes
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
