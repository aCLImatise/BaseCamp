#!/usr/bin/env cwl-runner

baseCommand:
- distribution_features.py
class: CommandLineTool
cwlVersion: v1.0
id: distribution_features.py
inputs:
- doc: '[-pal PALETTE] [-col COLOR]'
  id: f
  inputBinding:
    prefix: -f
  type: string
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
- doc: Name of the column with uniqueID.
  id: id
  inputBinding:
    prefix: --ID
  type: string
- doc: Treatment group
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Output figure name [pdf].
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
