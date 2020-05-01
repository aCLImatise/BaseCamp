#!/usr/bin/env cwl-runner

baseCommand:
- bedpetovcf
class: CommandLineTool
cwlVersion: v1.0
id: bedpetovcf
inputs:
- doc: 'BEDPE input (default: stdin)'
  id: bed_pe
  inputBinding:
    prefix: --bedpe
  type: string
- doc: 'Output VCF to write (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: string
