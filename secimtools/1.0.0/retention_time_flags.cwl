#!/usr/bin/env cwl-runner

baseCommand:
- retention_time_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: retention_time_flags.py
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
- doc: Value cutoff. The default is .2 minutes assuming data are in minutes.
  id: minutes
  inputBinding:
    prefix: --minutes
  type: long
- doc: The difference is calculated by 95th percentile and 5th percentile by default.
    If you add this argument, it uses 90th percentile and 10th percentile. [optional]
  id: pctl
  inputBinding:
    prefix: --pctl
  type: boolean
- doc: The default CV cutoff will flag 10 percent of the rowIDs with larger CVs. If
    you want to set a CV cutoff, put the number here. [optional]
  id: cv_cut_off
  inputBinding:
    prefix: --CVcutoff
  type: string
- doc: Name of the output TSV for CV plots.
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Name of the output PDF for RT flags.
  id: flag
  inputBinding:
    prefix: --flag
  type: string
- doc: Name of the palette to use.
  id: palette
  inputBinding:
    prefix: --palette
  type: string
- doc: Name of a valid color scheme on the selected palette
  id: color
  inputBinding:
    prefix: --color
  type: string
