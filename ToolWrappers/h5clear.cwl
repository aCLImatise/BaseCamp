class: CommandLineTool
id: h5clear.cwl
inputs:
- id: in_status
  doc: Clear the status_flags field in the file's superblock
  type: boolean
  inputBinding:
    prefix: --status
- id: in_image
  doc: Remove the metadata cache image from the file
  type: boolean
  inputBinding:
    prefix: --image
- id: in_filesize
  doc: Print the file's EOA and EOF
  type: boolean
  inputBinding:
    prefix: --filesize
- id: in_increment
  doc: "Set the file's EOA to the maximum of (EOA, EOF) + C for the file <file_name>\n\
    C is >= 0; C is optional and will default to 1M when not set"
  type: File
  inputBinding:
    prefix: --increment
- id: in_options
  doc: -h, --help                Print a usage message and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5clear
