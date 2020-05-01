#!/usr/bin/env cwl-runner

baseCommand:
- hgvsToVcf
class: CommandLineTool
cwlVersion: v1.0
id: hgvstovcf
inputs:
- doc: ''
  id: db
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_hgvs
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_vcf
  inputBinding:
    position: 2
  type: string
- doc: Don't do the VCF-conventional left shifting of ambiguous placements
  id: no_left_shift
  inputBinding:
    prefix: -noLeftShift
  type: boolean
