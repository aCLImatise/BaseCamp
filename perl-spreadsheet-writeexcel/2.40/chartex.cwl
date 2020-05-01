#!/usr/bin/env cwl-runner

baseCommand:
- chartex
class: CommandLineTool
cwlVersion: v1.0
id: chartex
inputs:
- doc: The root name for the extracted charts, defaults to "chart".
  id: chart_name
  inputBinding:
    prefix: --chartname
  type: boolean
- doc: 'This sets the root name for the extracted charts, defaults to "chart". For
    example: $ chartex file.xls Extracting "Chart1" to chart01.bin $ chartex -c mychart
    file.xls Extracting "Chart1" to mychart01.bin'
  id: chart_name
  inputBinding:
    prefix: --chartname
  type: string
- doc: Prints the manual page and exits.
  id: man
  inputBinding:
    prefix: --man
  type: string
