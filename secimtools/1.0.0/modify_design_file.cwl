#!/usr/bin/env cwl-runner

baseCommand:
- modify_design_file.py
class: CommandLineTool
cwlVersion: v1.0
id: modify_design_file.py
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
- doc: Name of the column with uniquedentifiers.
  id: uniqid
  inputBinding:
    prefix: --uniqID
  type: string
- doc: Name of column in design filewith Group/treatment information.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Name of the groups in yourgroup/treatment column that you want to remove from
    the design file.
  id: drops
  inputBinding:
    prefix: --drops
  type: string
- doc: Output path for the new design file
  id: out
  inputBinding:
    prefix: --out
  type: string
