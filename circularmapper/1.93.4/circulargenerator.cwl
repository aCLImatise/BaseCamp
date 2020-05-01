#!/usr/bin/env cwl-runner

baseCommand:
- circulargenerator
class: CommandLineTool
cwlVersion: v1.0
id: circulargenerator
inputs:
- doc: the elongation factor [INT]
  id: elongation
  inputBinding:
    prefix: --elongation
  type: string
- doc: the input FastA File
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: the names of the sequences that should to be elongated
  id: seq
  inputBinding:
    prefix: --seq
  type: string
