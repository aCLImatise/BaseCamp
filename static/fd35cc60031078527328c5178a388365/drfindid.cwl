class: CommandLineTool
id: drfindid.cwl
inputs:
- id: in_sensitive
  doc: "boolean    [N] By default, the query keywords are\nmatched against the EDAM\
    \ term names (and\nsynonyms) only. This option also matches the\nkeywords against\
    \ the EDAM term definitions\nand will therefore (typically) report more\nmatches."
  type: boolean
  inputBinding:
    prefix: -sensitive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drfindid
