#!/usr/bin/env cwl-runner

baseCommand:
- blank_feature_filtering_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: blank_feature_filtering_flags.py
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
- doc: Default BFF value [default 5000]
  id: bff
  inputBinding:
    prefix: --bff
  type: string
- doc: name of the column with the blanks
  id: blank
  inputBinding:
    prefix: --blank
  type: string
- doc: Value of the criteria to selct
  id: criteria
  inputBinding:
    prefix: --criteria
  type: string
- doc: Output path for flags file[CSV]
  id: out_flags
  inputBinding:
    prefix: --outflags
  type: string
- doc: Output path for bff file[CSV]
  id: out_bff
  inputBinding:
    prefix: --outbff
  type: string
