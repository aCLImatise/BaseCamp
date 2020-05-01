#!/usr/bin/env cwl-runner

baseCommand:
- transfer_annotation_to_groups
class: CommandLineTool
cwlVersion: v1.0
id: transfer_annotation_to_groups
inputs:
- doc: output filename [reannotated_groups]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: clusters filename [clustered_proteins]
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
