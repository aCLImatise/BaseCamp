#!/usr/bin/env cwl-runner

baseCommand:
- vcftobedpe
class: CommandLineTool
cwlVersion: v1.0
id: vcftobedpe
inputs:
- doc: 'VCF input (default: stdin)'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Output BEDPE to write (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Confidence interval to be added in case absent in the input VCF. If absent
    and value not provided by user, it adds 1 base
  id: confidence
  inputBinding:
    prefix: --confidence
  type: string
