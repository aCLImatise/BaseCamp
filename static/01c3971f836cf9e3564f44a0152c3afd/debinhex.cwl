class: CommandLineTool
id: ../../../debinhex.pl.cwl
inputs:
- id: output_given_directory
  doc: Output in given directory (default outputs in file's directory)
  type: string
  inputBinding:
    prefix: -o
- id: verbose_output_normally
  doc: Verbose output (normally just one line per file is shown)
  type: boolean
  inputBinding:
    prefix: -v
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- debinhex.pl
