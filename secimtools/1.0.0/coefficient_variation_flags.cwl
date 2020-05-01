#!/usr/bin/env cwl-runner

baseCommand:
- coefficient_variation_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: coefficient_variation_flags.py
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
- doc: Name of column in design file with Group/treatment information.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Different groups tosort by separeted by commas.
  id: levels
  inputBinding:
    prefix: --levels
  type: string
- doc: The default CV cutoff will flag 10 percent of the rowIDs with larger CVs. If
    you want to set a CV cutoff, put the number here. [optional]
  id: cv_cut_off
  inputBinding:
    prefix: --CVcutoff
  type: string
- doc: Name of the output PDF for CV plots.
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Name of the output TSV for CV flags.
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
