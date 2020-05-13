class: CommandLineTool
id: moabs.cwl
inputs:
- id: i
  doc: <str>   input files.
  type: boolean
  inputBinding:
    prefix: -i
- id: cf
  doc: <str>   configuration file.
  type: boolean
  inputBinding:
    prefix: --cf
- id: def
  doc: <str>   overwrite definitions in configuration file. --def key=value
  type: boolean
  inputBinding:
    prefix: --def
- id: v
  doc: <boleen>        verbose output  [0 or 1, default 0]
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- moabs
