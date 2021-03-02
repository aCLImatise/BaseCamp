class: CommandLineTool
id: cmpress_cmfile.cwl
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
  dockerPull: quay.io/biocontainers/infernal:1.1.3--h516909a_0
cwlVersion: v1.1
baseCommand:
- cmpress
- cmfile
