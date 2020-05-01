#!/usr/bin/env cwl-runner

baseCommand:
- seq-to-first-iso
class: CommandLineTool
cwlVersion: v1.0
id: seq-to-first-iso
inputs:
- doc: file to parse in .tsv format
  id: input_file_name
  inputBinding:
    position: 0
  type: string
- doc: column name with sequences
  id: sequence_col_name
  inputBinding:
    position: 1
  type: string
- doc: column name with charges
  id: charge_col_name
  inputBinding:
    position: 2
  type: string
- doc: name of output file
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: amino acids with default abundance
  id: unlabelled_aa
  inputBinding:
    prefix: --unlabelled-aa
  type: string
