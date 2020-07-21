class: CommandLineTool
id: ../../../mb_remove_duplicates.cwl
inputs:
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
