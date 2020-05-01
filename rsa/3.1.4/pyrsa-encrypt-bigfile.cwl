#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-encrypt-bigfile
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-encrypt-bigfile
inputs:
- doc: ''
  id: public_key
  inputBinding:
    position: 0
  type: string
- doc: Name of the file to encrypt. Reads from stdin if not specified.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Name of the file to write the encrypted file to. Written to stdout if this
    option is not present.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Key format of the public key - default PEM
  id: key_form
  inputBinding:
    prefix: --keyform
  type: string
