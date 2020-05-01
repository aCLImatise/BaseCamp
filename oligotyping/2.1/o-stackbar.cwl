#!/usr/bin/env cwl-runner

baseCommand:
- o-stackbar.R
class: CommandLineTool
cwlVersion: v1.0
id: o-stackbar.r
inputs:
- doc: ''
  id: stack_barr
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: environment_file
  inputBinding:
    position: 1
  type: string
- doc: Output file prefix for visualization files [default "unknown"]
  id: output_file_prefix
  inputBinding:
    prefix: --output_file_prefix
  type: string
- doc: Colors file
  id: colors_file
  inputBinding:
    prefix: --colors_file
  type: string
- doc: Title for the output figure [default '(unknown title)']
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Legend pos [default 'none']
  id: legend_pos
  inputBinding:
    prefix: --legend_pos
  type: string
