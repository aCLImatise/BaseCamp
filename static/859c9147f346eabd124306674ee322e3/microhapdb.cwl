class: CommandLineTool
id: microhapdb.cwl
inputs:
- id: cmd
  doc: frequency, lookup, marker, population
  type: string
  inputBinding:
    position: 0
- id: files
  doc: print data table filenames and exit
  type: boolean
  inputBinding:
    prefix: --files
outputs: []
cwlVersion: v1.1
baseCommand:
- microhapdb
