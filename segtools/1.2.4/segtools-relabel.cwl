#!/usr/bin/env cwl-runner

baseCommand:
- segtools-relabel
class: CommandLineTool
cwlVersion: v1.0
id: segtools-relabel
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: mnemonic_file
  inputBinding:
    position: 2
  type: string
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Save relabeled bed file to FILE instead of printing to stdout (default)
  id: outfile
  inputBinding:
    prefix: --outfile
  type: File
