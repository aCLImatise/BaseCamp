#!/usr/bin/env cwl-runner

baseCommand:
- maf_mask_cpg.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_mask_cpg.py
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
- doc: Character to use as mask ('?' is default)
  id: mask
  inputBinding:
    prefix: --mask
  type: string
- doc: Use restricted definition of CpGs
  id: restricted
  inputBinding:
    prefix: --restricted
  type: boolean
