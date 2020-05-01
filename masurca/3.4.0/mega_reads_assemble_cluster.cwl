#!/usr/bin/env cwl-runner

baseCommand:
- mega_reads_assemble_cluster.sh
class: CommandLineTool
cwlVersion: v1.0
id: mega_reads_assemble_cluster.sh
inputs:
- doc: ''
  id: mega_reads_assembles_h
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: File
