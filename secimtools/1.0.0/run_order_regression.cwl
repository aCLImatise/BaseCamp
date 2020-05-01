#!/usr/bin/env cwl-runner

baseCommand:
- run_order_regression.py
class: CommandLineTool
cwlVersion: v1.0
id: run_order_regression.py
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
- doc: Name of the column on design file that contains run order
  id: order
  inputBinding:
    prefix: --order
  type: string
- doc: Different groups to sort by separeted by commas.
  id: levels
  inputBinding:
    prefix: --levels
  type: string
- doc: Name of PDF to save scatter plots.
  id: fig
  inputBinding:
    prefix: --fig
  type: string
- doc: Name of table for scatter plots
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: Name of table flags
  id: flags
  inputBinding:
    prefix: --flags
  type: string
- doc: Add debugging log output.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
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
