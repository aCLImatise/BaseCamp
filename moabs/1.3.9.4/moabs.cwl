class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/moabs.cwl
inputs:
- id: str_input_files
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
- id: boleen_verbose_output
  doc: <boleen>        verbose output  [0 or 1, default 0]
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- moabs
