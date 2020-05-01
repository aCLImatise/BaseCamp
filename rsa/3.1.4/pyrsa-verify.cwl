#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-verify
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-verify
inputs:
- doc: ''
  id: public_key
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: signature_file
  inputBinding:
    position: 1
  type: string
- doc: Name of the file to verify. Reads from stdin if not specified.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Key format of the public key - default PEM
  id: key_form
  inputBinding:
    prefix: --keyform
  type: string
