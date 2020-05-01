#!/usr/bin/env cwl-runner

baseCommand:
- mega_reads_assemble_ref.sh
class: CommandLineTool
cwlVersion: v1.0
id: mega_reads_assemble_ref.sh
inputs:
- doc: ''
  id: mega_reads_assemble_i_ref_sh
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: File
