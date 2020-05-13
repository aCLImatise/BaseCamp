class: CommandLineTool
id: bedparse_validateFormat.cwl
inputs:
- id: fix_separators
  doc: If the fields are separated by multiple spaces (e.g. when copy-pasting BED
    files), replace them into tabs.
  type: boolean
  inputBinding:
    prefix: --fixSeparators
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- validateFormat
