class: CommandLineTool
id: SatsumaToFASTA.cwl
inputs:
- id: in_string_satsuma_file
  doc: '<string> : satsuma file'
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SatsumaToFASTA
