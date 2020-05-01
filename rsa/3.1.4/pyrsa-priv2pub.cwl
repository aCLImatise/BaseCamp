#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-priv2pub
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-priv2pub
inputs:
- doc: Input filename. Reads from stdin if not specified
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Output filename. Writes to stdout of not specified
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: key format of input - default PEM
  id: inform
  inputBinding:
    prefix: --inform
  type: string
- doc: key format of output - default PEM
  id: out_form
  inputBinding:
    prefix: --outform
  type: string
