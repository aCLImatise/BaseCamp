class: CommandLineTool
id: miso_pack.cwl
inputs:
- id: in_pack
  doc: "Pack a MISO output containing dir(s). Takes as input a\ndirectory or a comma-separated\
    \ set of directories that contain\nMISO output."
  type: Directory?
  inputBinding:
    prefix: --pack
- id: in_view
  doc: View a MISO database (.miso_db file).
  type: File?
  inputBinding:
    prefix: --view
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- miso_pack
