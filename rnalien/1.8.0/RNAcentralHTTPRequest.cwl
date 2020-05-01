#!/usr/bin/env cwl-runner

baseCommand:
- RNAcentralHTTPRequest
class: CommandLineTool
cwlVersion: v1.0
id: rnacentralhttprequest
inputs:
- doc: Loud verbosity
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet verbosity
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
