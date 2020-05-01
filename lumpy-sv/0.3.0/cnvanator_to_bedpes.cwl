#!/usr/bin/env cwl-runner

baseCommand:
- cnvanator_to_bedpes.py
class: CommandLineTool
cwlVersion: v1.0
id: cnvanator_to_bedpes.py
inputs:
- doc: Output file from CNVanator
  id: cnv_calls
  inputBinding:
    prefix: --cnv_calls
  type: string
- doc: input is .cns file from cnvkit
  id: cnv_kit
  inputBinding:
    prefix: --cnvkit
  type: boolean
- doc: Deletion output bedpe file name
  id: del_o
  inputBinding:
    prefix: --del_o
  type: string
- doc: Duplication output bedpe file name
  id: dup_o
  inputBinding:
    prefix: --dup_o
  type: string
- doc: The total size of the resulting breakpoint, centered on the call edge
  id: breakpoint_size
  inputBinding:
    prefix: --breakpoint_size
  type: string
