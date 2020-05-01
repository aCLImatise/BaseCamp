#!/usr/bin/env cwl-runner

baseCommand:
- threshold_based_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: threshold_based_flags.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: 'Name of the column with unique: identifiers.'
  id: id
  inputBinding:
    prefix: --ID
  type: string
- doc: Add the option to separate sample IDs by treatement name.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Cutoff to use for which values to flag. This defaults to 30,000
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: Output path for the created flag file.
  id: output
  inputBinding:
    prefix: --output
  type: string
