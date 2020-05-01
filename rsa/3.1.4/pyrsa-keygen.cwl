#!/usr/bin/env cwl-runner

baseCommand:
- pyrsa-keygen
class: CommandLineTool
cwlVersion: v1.0
id: pyrsa-keygen
inputs:
- doc: ''
  id: key_size
  inputBinding:
    position: 0
  type: string
- doc: Output filename for the public key. The public key is not saved if this option
    is not present. You can use pyrsa- priv2pub to create the public key file later.
  id: pub_out
  inputBinding:
    prefix: --pubout
  type: string
- doc: Output filename for the private key. The key is written to stdout if this option
    is not present.
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: key format of the private and public keys - default PEM
  id: form
  inputBinding:
    prefix: --form
  type: string
