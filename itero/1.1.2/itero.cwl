class: CommandLineTool
id: itero.cwl
inputs:
- id: command
  doc: help         Get help info on a itero command. assemble     Assemble cleaned/trimmed
    sequencing reads. check        Check to ensure binaries are installed and configured.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- itero
