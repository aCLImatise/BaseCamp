class: CommandLineTool
id: bl_interleave.cwl
inputs:
- id: i
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify the OUTPUT file
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: reformat paired read ID lines by replacing everything after the first space,
    tab or / with the specified SEP followed by the input file number (e.g. '/' will
    use /1 as the ID suffix for the first input file, etc.)
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-interleave
