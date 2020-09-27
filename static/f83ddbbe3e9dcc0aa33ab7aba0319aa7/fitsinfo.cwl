class: CommandLineTool
id: fitsinfo.cwl
inputs:
- id: in_filename
  doc: Path to one or more FITS files. Wildcards are supported.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fitsinfo
