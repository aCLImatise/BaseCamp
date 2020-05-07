class: CommandLineTool
id: gs.cwl
inputs:
- id: d_no_pause
  doc: no pause after page   | -q       `quiet', fewer messages
  type: boolean
  inputBinding:
    prefix: -dNOPAUSE
- id: g
  doc: <width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution
  type: boolean
  inputBinding:
    prefix: -g
- id: s_device
  doc: select device         | -dBATCH  exit after last file
  type: string
  inputBinding:
    prefix: -sDEVICE
- id: soutputfile
  doc: 'select output file: - for stdout, |command for pipe, embed %d or %ld for page
    #'
  type: File
  inputBinding:
    prefix: -sOutputFile
outputs: []
cwlVersion: v1.1
baseCommand:
- gs
