class: CommandLineTool
id: chartex.cwl
inputs:
- id: chart_name
  doc: The root name for the extracted charts, defaults to "chart".
  type: boolean
  inputBinding:
    prefix: --chartname
- id: chart_name
  doc: 'This sets the root name for the extracted charts, defaults to "chart". For
    example: $ chartex file.xls Extracting "Chart1" to chart01.bin $ chartex -c mychart
    file.xls Extracting "Chart1" to mychart01.bin'
  type: string
  inputBinding:
    prefix: --chartname
- id: man
  doc: Prints the manual page and exits.
  type: string
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- chartex
