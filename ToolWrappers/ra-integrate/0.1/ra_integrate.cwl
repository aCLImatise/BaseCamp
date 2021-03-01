class: CommandLineTool
id: ra_integrate.cwl
inputs:
- id: in_spec
  doc: Set given spec file
  type: File?
  inputBinding:
    prefix: --spec
- id: in_directory
  doc: Set given dirpath as working directory
  type: File?
  inputBinding:
    prefix: --directory
- id: in_overlaps
  doc: Skip overlap phase and use overlaps from given file
  type: File?
  inputBinding:
    prefix: --overlaps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ra-integrate
