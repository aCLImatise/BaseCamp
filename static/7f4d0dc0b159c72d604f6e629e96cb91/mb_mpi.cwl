class: CommandLineTool
id: mb_mpi.cwl
inputs:
- id: i
  doc: Force interactive mode Non-interactive mode is the default when a filename
    is given Interactive mode is the default when no filename is given
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-mpi
