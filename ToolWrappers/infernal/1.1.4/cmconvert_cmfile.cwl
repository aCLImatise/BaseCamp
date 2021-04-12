class: CommandLineTool
id: cmconvert_cmfile.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/infernal:1.1.4--h779adbc_0
cwlVersion: v1.1
baseCommand:
- cmconvert
- cmfile
