class: CommandLineTool
id: dcod2lum.cwl
inputs:
- id: in_in_file
  doc: hardcopy characteristic curve file to be converted
  type: File
  inputBinding:
    position: 0
- id: in_out_file
  doc: softcopy characteristic curve file to be written
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: softcopy characteristic curve file to be written
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- dcod2lum
