#!/usr/bin/env cwl-runner

baseCommand:
- vcfannotate
class: CommandLineTool
cwlVersion: v1.0
id: vcfannotate
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: use annotations provided by this BED file
  id: bed
  inputBinding:
    prefix: --bed
  type: boolean
- doc: use this INFO field key for the annotations
  id: key
  inputBinding:
    prefix: --key
  type: boolean
- doc: use this INFO field key for records without annotations
  id: default
  inputBinding:
    prefix: --default
  type: boolean
