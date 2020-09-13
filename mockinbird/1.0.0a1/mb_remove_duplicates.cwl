class: CommandLineTool
id: ../../../mb_remove_duplicates.cwl
inputs:
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
