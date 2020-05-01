#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-sign
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-sign
inputs:
- doc: ''
  id: private_key
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hash_method
  inputBinding:
    position: 1
  type: string
- doc: Name of the file to sign. Reads from stdin if not specified.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Name of the file to write the signature to. Written to stdout if this option
    is not present.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Key format of the private key - default PEM
  id: key_form
  inputBinding:
    prefix: --keyform
  type: string
