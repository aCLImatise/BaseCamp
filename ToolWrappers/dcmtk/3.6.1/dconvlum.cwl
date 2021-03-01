class: CommandLineTool
id: dconvlum.cwl
inputs:
- id: in_in_file
  doc: VeriLUM characteristic curve file to be converted
  type: File
  inputBinding:
    position: 0
- id: in_out_file
  doc: DCMTK display file to be written
  type: File
  inputBinding:
    position: 1
- id: in_ambient
  doc: ambient light (cd/m^2, floating point value)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: DCMTK display file to be written
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dconvlum
