class: CommandLineTool
id: _tfm.cwl
inputs:
- id: in_outfile
  doc: outfile    [stdout] Program documentation text output
  type: boolean?
  inputBinding:
    prefix: -outfile
- id: in_more
  doc: "boolean    [@(!$(html))] This uses the standard UNIX\nutility 'more' to display\
    \ the text\npage-by-page, waiting for you to read one\nscreen-full before going\
    \ on to the next\npage. When you have finished reading a page,\npress the SPACE\
    \ bar to proceed to the next\npage."
  type: boolean?
  inputBinding:
    prefix: -more
- id: in_file
  doc: -html               boolean    [N] This will format the output for
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
- _tfm
