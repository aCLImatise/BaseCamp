#!/usr/bin/env cwl-runner

baseCommand:
- principal_component_analysis.py
class: CommandLineTool
cwlVersion: v1.0
id: principal_component_analysis.py
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
- doc: Name of the column with groups.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Different groups to sort by separeted by commas.
  id: levels
  inputBinding:
    prefix: --levels
  type: string
- doc: Name of output file to store loadings. TSV format.
  id: load_out
  inputBinding:
    prefix: --load_out
  type: string
- doc: Name of output file to store scores. TSV format.
  id: score_out
  inputBinding:
    prefix: --score_out
  type: string
- doc: Name of output file to store summaries of the components. TSV format.
  id: summary_out
  inputBinding:
    prefix: --summary_out
  type: string
- doc: Name of output file to storescatter plots for 3 principal components.
  id: figure
  inputBinding:
    prefix: --figure
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
