#!/usr/bin/env cwl-runner

baseCommand:
- vcfannotategenotypes
class: CommandLineTool
cwlVersion: v1.0
id: vcfannotategenotypes
inputs:
- doc: ''
  id: annotation_tag
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: vcf_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: vcf_file
  inputBinding:
    position: 2
  type: string
