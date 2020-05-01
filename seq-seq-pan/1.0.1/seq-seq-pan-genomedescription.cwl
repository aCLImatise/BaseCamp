#!/usr/bin/env cwl-runner

baseCommand:
- seq-seq-pan-genomedescription
class: CommandLineTool
cwlVersion: v1.0
id: seq-seq-pan-genomedescription
inputs:
- doc: ''
  id: genome_description_py
  inputBinding:
    position: 0
  type: string
- doc: File with list of /paths/to/files.fasta
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: name of output file
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Add new genome description to this file.
  id: add
  inputBinding:
    prefix: --add
  type: string
