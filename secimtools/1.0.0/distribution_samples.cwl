#!/usr/bin/env cwl-runner

baseCommand:
- distribution_samples.py
class: CommandLineTool
cwlVersion: v1.0
id: distribution_samples.py
inputs:
- doc: and outputs
  id: paths
  inputBinding:
    position: 0
  type: File
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
- doc: Name of column in design file with Group/treatment information.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Name of the column with the runOrder
  id: order
  inputBinding:
    prefix: --order
  type: string
- doc: Different groups tosort by separeted by commas.
  id: levels
  inputBinding:
    prefix: --levels
  type: string
- doc: Path for the distribution figure
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
