class: CommandLineTool
id: podselect.cwl
inputs:
- id: in_man
  doc: Print the manual page and exit.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_section
  doc: "Specify a section to include in the output. See \"SECTION\nSPECIFICATIONS\"\
    \ in Pod::Parser for the format to use for\nsection-spec. This option may be given\
    \ multiple times on the\ncommand line."
  type: string?
  inputBinding:
    prefix: -section
- id: in_file
  doc: "The pathname of a file from which to select sections of pod\ndocumentation\
    \ (defaults to standard input).\n"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- podselect
