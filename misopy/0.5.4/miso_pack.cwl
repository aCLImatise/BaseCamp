class: CommandLineTool
id: miso_pack.cwl
inputs:
- id: pack
  doc: Pack a MISO output containing dir(s). Takes as input a directory or a comma-separated
    set of directories that contain MISO output.
  type: string
  inputBinding:
    prefix: --pack
- id: view
  doc: View a MISO database (.miso_db file).
  type: string
  inputBinding:
    prefix: --view
outputs: []
cwlVersion: v1.1
baseCommand:
- miso_pack
