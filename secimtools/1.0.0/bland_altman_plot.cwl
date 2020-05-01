#!/usr/bin/env cwl-runner

baseCommand:
- bland_altman_plot.py
class: CommandLineTool
cwlVersion: v1.0
id: bland_altman_plot.py
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
- doc: Group/treatment identifier in design file [Optional].
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Name of the output PDF for Bland-Altman plots.
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Name of the output TSV for distribution flags.
  id: flag_dist
  inputBinding:
    prefix: --flag_dist
  type: string
- doc: Name of the output TSV for sample flags.
  id: flag_sample
  inputBinding:
    prefix: --flag_sample
  type: string
- doc: Name of the output TSV for feature flags.
  id: flag_feature
  inputBinding:
    prefix: --flag_feature
  type: string
- doc: Only process the given groups (list groups separated by spaces) [Optional].
  id: process_only
  inputBinding:
    prefix: --process_only
  type:
    items: string
    type: array
- doc: Cutoff value for flagging outliers [default=3].
  id: resid_cut_off
  inputBinding:
    prefix: --resid_cutoff
  type: string
- doc: Proportion cutoff value when flagging samples [default=0.20].
  id: sample_flag_cut_off
  inputBinding:
    prefix: --sample_flag_cutoff
  type: string
- doc: Proportion cutoff value when flagging features [default=0.05].
  id: feature_flag_cut_off
  inputBinding:
    prefix: --feature_flag_cutoff
  type: string
- doc: Add debugging log output.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
