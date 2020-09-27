class: CommandLineTool
id: mb.cwl
inputs:
- id: in_force_interactive_modenoninteractive
  doc: "Force interactive mode\nNon-interactive mode is the default when a filename\
    \ is given\nInteractive mode is the default when no filename is given"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_display_version_information
  doc: Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb
