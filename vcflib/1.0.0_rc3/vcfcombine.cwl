#!/usr/bin/env cwl-runner

baseCommand:
- vcfcombine
class: CommandLineTool
cwlVersion: v1.0
id: vcfcombine
inputs:
- doc: A region specifier of the form chrN:x-y to bound the merge
  id: region
  inputBinding:
    prefix: --region
  type: string
