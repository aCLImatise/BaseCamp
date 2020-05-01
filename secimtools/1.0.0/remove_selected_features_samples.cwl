#!/usr/bin/env cwl-runner

baseCommand:
- remove_selected_features_samples.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_selected_features_samples.py
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
- doc: Name of the column with unique identifiers.
  id: id
  inputBinding:
    prefix: --ID
  type: string
- doc: Flag file.
  id: flags
  inputBinding:
    prefix: --flags
  type: string
- doc: Type of flag file
  id: flag_file_type
  inputBinding:
    prefix: --flagfiletype
  type: string
- doc: Name of the column with unique identifiers in the flag files.
  id: flag_uniqid
  inputBinding:
    prefix: --flagUniqID
  type: string
- doc: Name of the flag/field you want to access.
  id: flag_drop
  inputBinding:
    prefix: --flagDrop
  type: string
- doc: Cut Value
  id: value
  inputBinding:
    prefix: --value
  type: string
- doc: Condition for the cutwhere 0=Equal to, 1=Greater than and 2=less than.
  id: condition
  inputBinding:
    prefix: --condition
  type: string
- doc: Output file without the Drops.
  id: out_wide
  inputBinding:
    prefix: --outWide
  type: string
- doc: Output file for Drops.
  id: out_flags
  inputBinding:
    prefix: --outFlags
  type: string
