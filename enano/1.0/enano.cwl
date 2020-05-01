#!/usr/bin/env cwl-runner

baseCommand:
- enano
class: CommandLineTool
cwlVersion: v1.0
id: enano
inputs:
- doc: To use MAX COMPRESION MODE. Default is FAST MODE.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Base sequence context length. Default is 7 (max 13).
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: Length of the DNA sequence context. Default is 6.
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Maximum number of threads allowed to use by the compressor. Default is 8.
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Maximum number of threads allowed to use by the decompressor. Default is 8.
  id: t
  inputBinding:
    prefix: -t
  type: string
