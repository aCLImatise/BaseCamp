class: CommandLineTool
id: sander.cwl
inputs:
- id: in_scaled_md
  doc: '] -cph-data -ce-data <file>'
  type: File
  inputBinding:
    prefix: -scaledMD
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sander
