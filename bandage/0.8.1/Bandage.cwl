class: CommandLineTool
id: ../../../Bandage.cwl
inputs:
- id: in_help_all
  doc: View all command line settings
  type: boolean
  inputBinding:
    prefix: --helpall
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Bandage
