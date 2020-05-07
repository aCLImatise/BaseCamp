class: CommandLineTool
id: carna.pl.cwl
inputs:
- id: input_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: Arguments passed to carna. Call carna --help or --args '--help' for the available
    options of carna.
  type: boolean
  inputBinding:
    prefix: --args
outputs: []
cwlVersion: v1.1
baseCommand:
- carna.pl
