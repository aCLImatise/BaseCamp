#!/usr/bin/env cwl-runner

baseCommand:
- extract_variants
class: CommandLineTool
cwlVersion: v1.0
id: extract_variants
inputs:
- doc: Write gVCF output without header
  id: skip_header
  inputBinding:
    prefix: --skip-header
  type: boolean
- doc: Invert the filter so that only non-variant records are  output.
  id: invert
  inputBinding:
    prefix: --invert
  type: boolean
