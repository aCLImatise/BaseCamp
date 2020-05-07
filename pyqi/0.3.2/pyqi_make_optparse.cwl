class: CommandLineTool
id: pyqi_make_optparse.cwl
inputs:
- id: command
  doc: an existing Command [REQUIRED]
  type: string
  inputBinding:
    prefix: --command
- id: command_module
  doc: the Command source module [REQUIRED]
  type: string
  inputBinding:
    prefix: --command-module
- id: output_fp
  doc: output filepath to store generated optparse Python configuration file [REQUIRED]
  type: string
  inputBinding:
    prefix: --output-fp
outputs: []
cwlVersion: v1.1
baseCommand:
- pyqi
- make-optparse
