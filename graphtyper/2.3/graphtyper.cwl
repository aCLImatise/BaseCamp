#!/usr/bin/env cwl-runner

baseCommand:
- graphtyper
class: CommandLineTool
cwlVersion: v1.0
id: graphtyper
inputs:
- doc: Merge VCF files.
  id: vcf_merge
  inputBinding:
    position: 0
  type: string
- doc: Set to output verbose logging.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: Set to output very verbose logging.
  id: v_verbose
  inputBinding:
    prefix: --vverbose
  type: boolean
