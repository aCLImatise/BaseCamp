class: CommandLineTool
id: microhapdb.cwl
inputs:
- id: in_files
  doc: print data table filenames and exit
  type: boolean
  inputBinding:
    prefix: --files
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_cmd
  doc: frequency, lookup, marker, population
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- microhapdb
