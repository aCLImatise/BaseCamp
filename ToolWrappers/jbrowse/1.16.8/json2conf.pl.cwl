class: CommandLineTool
id: json2conf.pl.cwl
inputs:
- id: in_track
  doc: "| -t\nThe file is a track configuration of the type used with\nadd-track-json.pl."
  type: boolean
  inputBinding:
    prefix: --track
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- json2conf.pl
