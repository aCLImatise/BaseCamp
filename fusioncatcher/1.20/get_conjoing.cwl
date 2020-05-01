#!/usr/bin/env cwl-runner

baseCommand:
- get_conjoing.py
class: CommandLineTool
cwlVersion: v1.0
id: get_conjoing.py
inputs:
- doc: The name of the organism for which the known conjoined genes are downloaded,
    e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the known fusion genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The ConjoinG server from where the known conjoined genes are downloaded. Default
    is 'http://metasystems.riken.jp'.
  id: server
  inputBinding:
    prefix: --server
  type: string
