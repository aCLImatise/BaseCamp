#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-decrypt-bigfile
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-decrypt-bigfile
inputs:
- doc: ''
  id: private_key
  inputBinding:
    position: 0
  type: string
- doc: Name of the file to decrypt. Reads from stdin if not specified.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Name of the file to write the decrypted file to. Written to stdout if this
    option is not present.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Key format of the private key - default PEM
  id: key_form
  inputBinding:
    prefix: --keyform
  type: string
