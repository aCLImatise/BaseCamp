class: CommandLineTool
id: mergesam.sh.cwl
inputs:
- id: in_da
  doc: Disable assertions.
  type: boolean?
  inputBinding:
    prefix: -da
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- mergesam.sh
