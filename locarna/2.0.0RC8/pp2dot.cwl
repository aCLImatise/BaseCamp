#!/usr/bin/env cwl-runner

baseCommand:
- pp2dot
class: CommandLineTool
cwlVersion: v1.0
id: pp2dot
inputs:
- doc: 'Color palette. Use --colors2 to define a second palette for the lower-left
    triangle. Default: "black","cyan","green","yellow","red"'
  id: colors
  inputBinding:
    prefix: --colors
  type: string
- doc: Color palette for lower left triangle.
  id: colors_2
  inputBinding:
    prefix: --colors2
  type: string
- doc: Full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
