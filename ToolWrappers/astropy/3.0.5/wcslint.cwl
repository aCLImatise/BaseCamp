class: CommandLineTool
id: wcslint.cwl
inputs:
- id: in_filename
  doc: Path to FITS file to check
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wcslint
