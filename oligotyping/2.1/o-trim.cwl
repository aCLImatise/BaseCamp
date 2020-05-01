#!/usr/bin/env cwl-runner

baseCommand:
- o-trim
class: CommandLineTool
cwlVersion: v1.0
id: o-trim
inputs:
- doc: FASTA file to subsample
  id: file
  inputBinding:
    position: 0
  type: File
- doc: Start position
  id: trim_from
  inputBinding:
    prefix: --trim-from
  type: long
- doc: End position
  id: trim_to
  inputBinding:
    prefix: --trim-to
  type: long
- doc: Minimum lenght of a read to be kept
  id: min_length
  inputBinding:
    prefix: --min-length
  type: long
- doc: Output file name.
  id: output
  inputBinding:
    prefix: --output
  type: File
