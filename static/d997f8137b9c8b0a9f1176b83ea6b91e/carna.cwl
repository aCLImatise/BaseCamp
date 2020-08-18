class: CommandLineTool
id: ../../../carna.pl.cwl
inputs:
- id: args
  doc: Arguments passed to carna. Call carna --help or --args '--help' for the available
    options of carna.
  type: boolean
  inputBinding:
    prefix: --args
- id: input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- carna.pl
