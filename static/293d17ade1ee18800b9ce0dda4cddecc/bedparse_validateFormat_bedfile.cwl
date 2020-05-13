class: CommandLineTool
id: bedparse_validateFormat_bedfile.cwl
inputs:
- id: fix_separators
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fixSeparators
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- validateFormat
- bedfile
