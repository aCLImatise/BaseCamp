class: CommandLineTool
id: GeDe3.cwl
inputs:
- id: in_force
  doc: force mode. Overwrites old files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: verbose mode (more information).
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reference_sequence_filename
  doc: "[FILE], --reference [FILE]\nReference sequence filename (\"-rm\" are trainned\
    \ here).\nExample: -r file1.txt."
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/geco3:1.0--h516909a_0
cwlVersion: v1.1
baseCommand:
- GeDe3
