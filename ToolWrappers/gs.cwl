class: CommandLineTool
id: gs.cwl
inputs:
- id: in_d_no_pause
  doc: no pause after page   | -q       `quiet', fewer messages
  type: boolean
  inputBinding:
    prefix: -dNOPAUSE
- id: in_widthxheight_page_size
  doc: <width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution
  type: boolean
  inputBinding:
    prefix: -g
- id: in_s_device
  doc: select device         | -dBATCH  exit after last file
  type: File
  inputBinding:
    prefix: -sDEVICE
- id: in_soutputfile
  doc: "select output file: - for stdout, |command for pipe,\nembed %d or %ld for\
    \ page #"
  type: File
  inputBinding:
    prefix: -sOutputFile
- id: in_switches
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_two_do_tps
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_soutputfile
  doc: "select output file: - for stdout, |command for pipe,\nembed %d or %ld for\
    \ page #"
  type: File
  outputBinding:
    glob: $(inputs.in_soutputfile)
cwlVersion: v1.1
baseCommand:
- gs
