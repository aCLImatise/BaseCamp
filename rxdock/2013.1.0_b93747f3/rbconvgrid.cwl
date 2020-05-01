#!/usr/bin/env cwl-runner

baseCommand:
- rbconvgrid
class: CommandLineTool
cwlVersion: v1.0
id: rbconvgrid
inputs:
- doc: ''
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: grid_num
  inputBinding:
    position: 2
  type: string
- doc: <InputFile> - input RbtVdwGridSF binary grid filename
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <OutputFile> - output InsightII ascii grid filename
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <GridNum> - grid number to convert (default = list grids)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
