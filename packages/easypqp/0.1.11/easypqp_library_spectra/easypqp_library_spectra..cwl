class: CommandLineTool
id: easypqp_library_spectra..cwl
inputs:
- id: in_easy_pqp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_library
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_files
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easypqp:0.1.11--py_0
cwlVersion: v1.1
baseCommand:
- easypqp
- library
- spectra.
